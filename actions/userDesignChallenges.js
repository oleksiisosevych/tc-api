/*
 * Copyright (C) 2014 TopCoder Inc., All Rights Reserved.
 *
 * Get user design challenges api
 *
 * @version 1.0
 * @author TCSASSEMBLER
 *
 */
"use strict";
/*jslint stupid: true, unparam: true, continue: true */


var async = require('async');
var _ = require('underscore');
var BadRequestError = require('../errors/BadRequestError');
var NotFoundError = require('../errors/NotFoundError');

/**
 * The constants of project type.
 */
var DESIGN_PROJECT_TYPE = "17,20,16,32,30,31,21,18,22,34,40,1";

/**
 * The valid sort column for user challenges api.
 */
var USER_CHALLENGE_ALLOWABLE_SORT_COLUMN = ["id", "type", "placement", "prize", "num_contestants", "num_submitters", "coding_duration"];


/**
 * check whether given user is activated and existed.
 * @param {String} handle - the handle to check.
 * @param {Object} api - the action hero api object
 * @param {Object} dbConnectionMap - the database connection map
 * @param {Function<err>} callback - the callback function
 */
function checkUserExistAndActivated(handle, api, dbConnectionMap, callback) {
    api.dataAccess.executeQuery('check_user', { handle: handle }, dbConnectionMap, function (err, result) {
        if (err) {
            callback(err);
            return;
        }

        if (!result || result.length === 0) {
            callback(new NotFoundError("User does not exist."));
            return;
        }

        if (result && result[0] && result[0].status === 'A') {
            callback(null, result);
        } else {
            callback(new BadRequestError('User is not activated.'));
        }
    });
}

/**
 * Build str to array.
 *
 * @param {String} str - the str like str1,str2,str3
 * @return  the array by split str.
 */
function buildArray(str) {
    if (str.trim().length === 0) {
        return [];
    }

    return _.map(str.split(','), function (item) {
        return item.trim();
    });

}

/**
 * Handle get user challenges api.
 *
 * @param {Object} api - the api object.
 * @param {Object} connection - the connection object.
 * @param {Integer} challengeType - the challenge type
 * @param {Function} next - the callback function.
 */
var getUserChallenges = function (api, connection, challengeType, next) {
    var helper = api.helper, params = connection.params, sqlParams,
        pageIndex, pageSize, sortColumn, sortOrder, error, result, handle = connection.params.handle,
        dbConnectionMap = connection.dbConnectionMap;

    sortOrder = (params.sortOrder || "asc").toLowerCase();
    sortColumn = (params.sortColumn || "id").toLowerCase();
    pageIndex = Number(params.pageIndex || 1);
    pageSize = Number(params.pageSize || helper.MAX_PAGE_SIZE);

    if (!_.isDefined(params.sortOrder) && sortColumn === "id") {
        sortOrder = "desc";
    }

    async.waterfall([
        function (cb) {
            checkUserExistAndActivated(handle, api, dbConnectionMap, cb);
        },
        function (result, cb) {
            var allowedSort = helper.getLowerCaseList(USER_CHALLENGE_ALLOWABLE_SORT_COLUMN), scriptName = "get_user_design_challenges";
            if (_.isDefined(params.pageIndex) && pageIndex !== -1) {
                error = helper.checkDefined(params.pageSize, "pageSize");
            }
            error = error ||
                helper.checkMaxNumber(pageIndex, helper.MAX_INT, "pageIndex") ||
                helper.checkMaxNumber(pageSize, helper.MAX_PAGE_SIZE, "pageSize") ||
                helper.checkPageIndex(pageIndex, "pageIndex") ||
                helper.checkPositiveInteger(pageSize, "pageSize") ||
                helper.checkContains(["asc", "desc"], sortOrder, "sortOrder") ||
                helper.checkContains(allowedSort, sortColumn, "sortColumn");

            if (error) {
                cb(error);
                return;
            }

            if (pageIndex === -1) {
                pageIndex = 1;
                pageSize = helper.MAX_INT;
            }
            sqlParams = {
                firstRowIndex: (pageIndex - 1) * pageSize,
                pageSize: pageSize,
                sortColumn: helper.getSortColumnDBName(sortColumn),
                sortOrder: sortOrder,
                userId: result[0].user_id,
                challengeType: challengeType
            };
            async.parallel({
                count: function (cbx) {
                    api.dataAccess.executeQuery(scriptName + "_count",
                        sqlParams,
                        dbConnectionMap,
                        cbx);
                },
                data: function (cbx) {
                    api.dataAccess.executeQuery(scriptName,
                        sqlParams,
                        dbConnectionMap,
                        cbx);
                }
            }, cb);
        }, function (results, cb) {

            var total = results.count[0].total;
            if (total === 0 || results.data.length === 0) {
                result = {
                    data: [],
                    total: total,
                    pageIndex: pageIndex,
                    pageSize: Number(params.pageIndex) === -1 ? total : pageSize
                };
                cb();
                return;
            }
            result = {
                data: _.map(results.data, function (item) {

                    var challenge = {
                        id: item.id,
                        type: item.type,
                        placement: item.placement,
                        prize: item.payment > 0 ? true : false,
                        numContestants: item.num_contestants,
                        numSubmitters: item.num_submitters,
                        codingDuration: item.coding_duration,
                        platforms: buildArray(item.platforms),
                        technologies: buildArray(item.technologies)
                    };
                    return challenge;
                }),
                total: total,
                pageIndex: pageIndex,
                pageSize: Number(params.pageIndex) === -1 ? total : pageSize
            };
            cb();
        }
    ], function (err) {
        if (err) {
            helper.handleError(api, connection, err);
        } else {
            connection.response = result;
        }
        next(connection, true);
    });
};


/**
 * The API for get user design challenges
 */
exports.getUserDesignChallenges = {
    name: "getUserDesignChallenges",
    description: "get user design challenges api",
    inputs: {
        required: ['handle'],
        optional: ['pageSize', 'pageIndex', 'sortColumn', 'sortOrder']
    },
    blockedConnectionTypes: [],
    outputExample: {},
    version: 'v2',
    transaction: 'read',
    databases: ['tcs_catalog'],
    run: function (api, connection, next) {
        if (connection.dbConnectionMap) {
            api.log("Execute getUserDesignChallenges#run", 'debug');
            getUserChallenges(api, connection, DESIGN_PROJECT_TYPE, next);
        } else {
            api.helper.handleNoConnection(api, connection, next);
        }
    }
};