DATABASE tcs_catalog;

INSERT INTO tc_direct_project(project_id,name,description,project_status_id,user_id,create_date)
VALUES(30010001,'tc direct project','tc direct project',1,132456,CURRENT);

INSERT INTO user_permission_grant(user_permission_grant_id,user_id,resource_id,permission_type_id,is_studio)
VALUES(1,132456,30010001,3,1);


-- first active contest
INSERT INTO project(project_id,project_status_id,project_category_id,tc_direct_project_id,create_user,create_date,modify_user,modify_date) 
VALUES(10001,1,16,30010001,'132456',CURRENT,'132456',CURRENT);

INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,6,'Studio Contest 1','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,26,'On','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,30,'450','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,36,'1000','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,32,'2','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,70,'ab','132456',CURRENT,'132456',CURRENT);


--registration phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10001,10001,1,3,
TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--submission phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10002,10001,2,2,
TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),CURRENT + 1000 UNITS MINUTE,
null,null,1209600000,
'132456',CURRENT,'132456',CURRENT);

--milestone phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10003,10001,15,2,
TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-27 00:00:00','%Y-%m-%d %H:%M:%S'),
null,null,864000000,
'132456',CURRENT,'132456',CURRENT);

--registrants
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10001,1,10001,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10002,1,10001,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10003,1,10001,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10004,1,10001,'132456',CURRENT,'132456',CURRENT);

INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,1,'132457','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10001,2,'super','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10002,1,'132458','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10002,2,'user','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10003,1,'124766','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10003,2,'twight','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10004,1,'124776','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10004,2,'sandking','132456',CURRENT,'132456',CURRENT);

--prizes
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10001,10001,1,1000,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10002,10001,1,250,14,1,'132456',CURRENT,'132456',CURRENT);


--submissions
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10001,10001,10001,1,1,'','132456',CURRENT,'132456',CURRENT);
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10002,10001,10002,1,1,'','132456',CURRENT,'132456',CURRENT);

INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10001,10001,1,1,10001,'132456',CURRENT,'132456',CURRENT);
INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10002,10002,1,3,10002,'132456',CURRENT,'132456',CURRENT);


-- second active contest
INSERT INTO project(project_id,project_status_id,project_category_id,tc_direct_project_id,create_user,create_date,modify_user,modify_date) 
VALUES(10011,1,17,30010001,'132456',CURRENT,'132456',CURRENT);

INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,6,'Studio Contest 2','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,26,'On','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,30,'360','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,36,'800','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,32,'2','132456',CURRENT,'132456',CURRENT);


--registration phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10011,10011,1,2,
TO_DATE('2013-11-15 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-15 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-30 10:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-15 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 10:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--submission phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10012,10011,2,2,
TO_DATE('2013-11-16 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 10:00:00','%Y-%m-%d %H:%M:%S'),CURRENT + 3000 UNITS MINUTE,
null,null,1209600000,
'132456',CURRENT,'132456',CURRENT);

--milestone phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10013,10011,15,2,
TO_DATE('2013-11-16 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-16 10:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-25 10:00:00','%Y-%m-%d %H:%M:%S'),
null,null,864000000,
'132456',CURRENT,'132456',CURRENT);

--registrants
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10011,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10012,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10013,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10014,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10015,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10016,1,10011,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10017,1,10011,'132456',CURRENT,'132456',CURRENT);

INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,1,'132457','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10011,2,'super','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10012,1,'132458','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10012,2,'user','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10013,1,'124766','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10013,2,'twight','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10014,1,'124776','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10014,2,'sandking','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10015,1,'124834','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10015,2,'lightspeed','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10016,1,'124835','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10016,2,'reassembler','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10017,1,'124836','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10017,2,'annej9ny','132456',CURRENT,'132456',CURRENT);

--prizes
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10011,10011,1,200,14,2,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10012,10011,1,800,15,1,'132456',CURRENT,'132456',CURRENT);


--submissions
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10011,10011,10011,1,1,'','132456',CURRENT,'132456',CURRENT);
/*
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10012,10011,10012,1,1,'','132456',CURRENT,'132456',CURRENT);
*/

INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10011,10011,1,3,10011,'132456',CURRENT,'132456',CURRENT);
/*
INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10012,10012,1,3,10011,'132456',CURRENT,'132456',CURRENT);
*/




--upcoming contest
INSERT INTO project(project_id,project_status_id,project_category_id,tc_direct_project_id,create_user,create_date,modify_user,modify_date) 
VALUES(10021,2,17,30010001,'132456',CURRENT,'132456',CURRENT);

INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10021,6,'Studio Contest 3','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10021,26,'On','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10021,30,'450','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10021,36,'1000','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10021,32,'2','132456',CURRENT,'132456',CURRENT);

--registration phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10021,10021,1,1,
TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-10 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-10 00:00:00','%Y-%m-%d %H:%M:%S'),864000000,
'132456',CURRENT,'132456',CURRENT);

--submission phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10022,10021,2,1,
TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'), CURRENT + 10000 UNITS MINUTE,
null,null,1296000000,
'132456',CURRENT,'132456',CURRENT);

--milestone phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10023,10021,15,1,
TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-12-25 00:00:00','%Y-%m-%d %H:%M:%S'),
null,null,864000000,
'132456',CURRENT,'132456',CURRENT);

INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10021,10021,1,1000,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10022,10021,1,250,14,1,'132456',CURRENT,'132456',CURRENT);





--open contest
INSERT INTO project(project_id,project_status_id,project_category_id,tc_direct_project_id,create_user,create_date,modify_user,modify_date) 
VALUES(10031,1,16,30010001,'132456',CURRENT,'132456',CURRENT);

INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,6,'Studio Contest 4','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,26,'On','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,30,'450','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,36,'1000','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,32,'2','132456',CURRENT,'132456',CURRENT);


--registration phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10031,10031,1,3,
TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--submission phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10032,10031,2,3,
TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),CURRENT + 3000 UNITS MINUTE,
TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),1209600000,
'132456',CURRENT,'132456',CURRENT);

--milestone phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10033,10031,15,3,
TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-06 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),864000000,
'132456',CURRENT,'132456',CURRENT);

--screening phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10034,10031,3,2,
TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-30 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-10 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-30 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--registrants
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10031,1,10031,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10032,1,10031,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10033,1,10031,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10034,1,10031,'132456',CURRENT,'132456',CURRENT);

INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,1,'132457','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10031,2,'super','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10032,1,'132458','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10032,2,'user','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10033,1,'124766','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10033,2,'twight','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10034,1,'124776','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10034,2,'sandking','132456',CURRENT,'132456',CURRENT);

--prizes
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10031,10031,1,1000,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10032,10031,1,250,14,1,'132456',CURRENT,'132456',CURRENT);

--submissions
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10031,10031,10031,1,1,'','132456',CURRENT,'132456',CURRENT);
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10032,10031,10032,1,1,'','132456',CURRENT,'132456',CURRENT);

INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10031,10031,1,1,10031,'132456',CURRENT,'132456',CURRENT);
INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10032,10032,1,3,10032,'132456',CURRENT,'132456',CURRENT);




--past contest
INSERT INTO project_studio_specification(project_studio_spec_id,contest_description,create_user,create_date,modify_user,modify_date) 
VALUES(1,'Description of Studio Contest 5.','132456',CURRENT,'132456',CURRENT);

INSERT INTO project(project_id,project_status_id,project_category_id,tc_direct_project_id,project_studio_spec_id,create_user,create_date,modify_user,modify_date) 
VALUES(10041,7,16,30010001,1,'132456',CURRENT,'132456',CURRENT);

INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,6,'Studio Contest 5','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,26,'On','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,30,'450','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,36,'1000','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,4,'10000001','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,53,'true','132456',CURRENT,'132456',CURRENT);
INSERT INTO project_info(project_id,project_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,32,'2','132456',CURRENT,'132456',CURRENT);

--registration phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10041,10041,1,3,
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-02 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-02 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--submission phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10042,10041,2,3,
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),172800000,
'132456',CURRENT,'132456',CURRENT);

--milestone phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10043,10041,15,3,
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-01 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),172800000,
'132456',CURRENT,'132456',CURRENT);

--screening phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10044,10041,3,3,
TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-03 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--review phase
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10045,10041,4,3,
TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--checkpoint review
INSERT INTO project_phase(project_phase_id,project_id,phase_type_id,phase_status_id,
fixed_start_time,scheduled_start_time,scheduled_end_time,actual_start_time,actual_end_time,duration,
create_user,create_date,modify_user,modify_date)
VALUES(10046,10041,17,3,
TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),
TO_DATE('2013-11-04 00:00:00','%Y-%m-%d %H:%M:%S'),TO_DATE('2013-11-05 00:00:00','%Y-%m-%d %H:%M:%S'),86400000,
'132456',CURRENT,'132456',CURRENT);

--registrants
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10041,1,10041,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10042,1,10041,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10043,1,10041,'132456',CURRENT,'132456',CURRENT);
INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10044,1,10041,'132456',CURRENT,'132456',CURRENT);

INSERT INTO resource(resource_id,resource_role_id,project_id,create_user,create_date,modify_user,modify_date)
VALUES(10045,20,10041,'132456',CURRENT,'132456',CURRENT);

INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,1,'132457','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10041,2,'super','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10042,1,'132458','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10042,2,'user','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10043,1,'124766','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10043,2,'twight','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10044,1,'124776','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10044,2,'sandking','132456',CURRENT,'132456',CURRENT);

INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10045,1,'132456','132456',CURRENT,'132456',CURRENT);
INSERT INTO resource_info(resource_id,resource_info_type_id,value,create_user,create_date,modify_user,modify_date) 
VALUES(10045,2,'heffan','132456',CURRENT,'132456',CURRENT);

--prizes
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10041,10041,1,1000,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10042,10041,2,500,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10043,10041,3,200,15,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO prize(prize_id,project_id,place,prize_amount,prize_type_id,number_of_submissions,create_user,create_date,modify_user,modify_date)
VALUES(10044,10041,1,250,14,1,'132456',CURRENT,'132456',CURRENT);


--submissions
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10041,10041,10041,1,1,'','132456',CURRENT,'132456',CURRENT);
INSERT INTO upload(upload_id,project_id,resource_id,upload_type_id,upload_status_id,parameter,create_user,create_date,modify_user,modify_date)
VALUES(10042,10041,10042,1,1,'','132456',CURRENT,'132456',CURRENT);

INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,placement,create_user,create_date,modify_user,modify_date)
VALUES(10041,10041,1,1,10041,1,'132456',CURRENT,'132456',CURRENT);
INSERT INTO submission(submission_id,upload_id,submission_status_id,submission_type_id,prize_id,create_user,create_date,modify_user,modify_date)
VALUES(10042,10042,1,3,10044,'132456',CURRENT,'132456',CURRENT);


INSERT INTO review(review_id,resource_id,submission_id,project_phase_id,scorecard_id,committed,create_user,create_date,modify_user,modify_date) 
VALUES(1,10045,10042,10045,30000418,1,'132456',CURRENT,'132456',CURRENT);

INSERT INTO review_item(review_item_id,review_id,scorecard_question_id,upload_id,answer,sort,create_user,create_date,modify_user,modify_date) 
VALUES(1,1,30003114,10042,'review item answer', 1,'132456',CURRENT,'132456',CURRENT);

INSERT INTO review_item_comment(review_item_comment_id,resource_id,review_item_id,comment_type_id,content,sort,create_user,create_date,modify_user,modify_date)  
VALUES(1,10045,1,1,'review item comment content',1,'132456',CURRENT,'132456',CURRENT);


DATABASE tcs_dw;

INSERT INTO coder(coder_id,handle,status) VALUES(132457,'super','A');

INSERT INTO submission(submission_id,submitter_id,project_id,submission_url,submission_type) 
VALUES(10041,132457,10041,'',1);

INSERT INTO project_result(project_id,user_id,placed,final_points,submit_timestamp,submit_ind) 
VALUES(10041,132457,1,450.0,CURRENT,1);