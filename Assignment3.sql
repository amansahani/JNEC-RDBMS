/* Branch Table*/
USE Company;

INSERT INTO BRANCH(BRANCH_ID,STREET,CITY,POSTAL_CODE) VALUES ('B001','Oxford Street','London',4310001);
INSERT INTO BRANCH(BRANCH_ID,STREET,CITY,POSTAL_CODE) VALUES ('B004','Admiral Street','Glasgow',5310001);
INSERT INTO BRANCH(BRANCH_ID,STREET,CITY,POSTAL_CODE) VALUES ('B010','Washington Street','New York',6310003);
INSERT INTO BRANCH(BRANCH_ID,STREET,CITY,POSTAL_CODE) VALUES ('B009','Baker Street','London',7310003);
INSERT INTO BRANCH(BRANCH_ID,STREET,CITY,POSTAL_CODE) VALUES ('B011','United Square','Manchester',8310003);

/*Staff Table*/

INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG14','David','ford','Manager','m','1998-07-30',1200000,'B001');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG15','Pitambar','Rathod','Asst','m','1999-10-30',200000,'B001');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG16','Rushi','Patil','Superviser','m','2000-01-23',250000,'B001');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG17','Om','aher','Cashier','m','2000-07-30',280000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG18','Vishali','Tambe','Helper','f','1999-10-30',150000,'B001');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG19','Anand','Rathod','Manager','m','1998-07-30',1200000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG20','Anjali','Poul','Asst','f','1999-08-13',200000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG21','Shradhaa','Gadekar','Superviser','f','2001-01-23',500000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG22','Omkar','aher','Cashier','m','2002-07-30',180000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG23','Vaibhavi','Tambe','Helper','f','1995-10-30',900000,'B004');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG24','Pruthvi','Lokhande','Manager','f','1990-07-23',1000000,'B010');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG25','Kanchana','Jadhav','Asst','f','1985-10-30',200000,'B010');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG26','Rushabh','Patil','Superviser','m','2005-01-23',250000,'B010');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG27','Omkar','Bhojne','Cashier','m','2004-07-30',280000,'B010');
INSERT INTO STAFF(STAFF_ID,FNAME,LNAME,POSITION,SEX,DOB,SALARY,BRANCH_ID) VALUES ('SG28','vishal','Rede','Helper','m','1980-10-30',150000,'B001');

/*Client Table*/


INSERT INTO CLIENT_TABLE(CLIENT_ID,FNAME,LNAME,TELEPHONE_NO,PREFERENCE,MAXRENT) VALUES ('C001','vishal','Sahani',2040331,'1BHK',10000);
INSERT INTO CLIENT_TABLE(CLIENT_ID,FNAME,LNAME,TELEPHONE_NO,PREFERENCE,MAXRENT) VALUES ('C002','viru','Jagtap',2040332,'2BHK',15000);
INSERT INTO CLIENT_TABLE(CLIENT_ID,FNAME,LNAME,TELEPHONE_NO,PREFERENCE,MAXRENT) VALUES ('C003','jay','Rathod',2040333,'PG4',6000);
INSERT INTO CLIENT_TABLE(CLIENT_ID,FNAME,LNAME,TELEPHONE_NO,PREFERENCE,MAXRENT) VALUES ('C004','vina','Malik',2040334,'Bunglow',20000);
INSERT INTO CLIENT_TABLE(CLIENT_ID,FNAME,LNAME,TELEPHONE_NO,PREFERENCE,MAXRENT) VALUES ('C005','Aman','Husaen',2040335,'Villa',30000);

/*Private Owner Table*/

INSERT INTO PRIVATE_OWNER(OWNER_ID,FNAME,LNAME,ADDRESS,TELEPHONE_NO) VALUES (1001,'akshay','Husaen','Cidco,N-6',2045001);
INSERT INTO PRIVATE_OWNER(OWNER_ID,FNAME,LNAME,ADDRESS,TELEPHONE_NO) VALUES (1002,'akash','Menan','Glasgow',2045002);
INSERT INTO PRIVATE_OWNER(OWNER_ID,FNAME,LNAME,ADDRESS,TELEPHONE_NO) VALUES (1003,'linda','johar','Cidco,N-8',2045003);
INSERT INTO PRIVATE_OWNER(OWNER_ID,FNAME,LNAME,ADDRESS,TELEPHONE_NO) VALUES (1004,'Mirinda','singh','Cidco,N-9',2045004);
INSERT INTO PRIVATE_OWNER(OWNER_ID,FNAME,LNAME,ADDRESS,TELEPHONE_NO) VALUES (1005,'Santa','Clouse','Glasgow',2045005);

/*Property For Rent Table*/

INSERT INTO PROPERTY_FOR_RENT(PROPERTY_ID,STREET,CITY,POSTAL_CODE,PROPERTY_TYPE,ROOMS,RENT,OWNER_ID,STAFF_ID,BRANCH_ID) VALUES (3001,'Mgm road','Aurangabad',423064,'1BHK',3,6000,1001,'SG14','B010');
INSERT INTO PROPERTY_FOR_RENT(PROPERTY_ID,STREET,CITY,POSTAL_CODE,PROPERTY_TYPE,ROOMS,RENT,OWNER_ID,STAFF_ID,BRANCH_ID) VALUES (3002,'Paithan road','Aurangabad',423054,'2BHK',4,8000,1002,'SG15','B001');
INSERT INTO PROPERTY_FOR_RENT(PROPERTY_ID,STREET,CITY,POSTAL_CODE,PROPERTY_TYPE,ROOMS,RENT,OWNER_ID,STAFF_ID,BRANCH_ID) VALUES (3003,'Bid bypass','Aurangabad',423065,'PG4',4,5000,1003,'SG16','B001');
INSERT INTO PROPERTY_FOR_RENT(PROPERTY_ID,STREET,CITY,POSTAL_CODE,PROPERTY_TYPE,ROOMS,RENT,OWNER_ID,STAFF_ID,BRANCH_ID) VALUES (3004,'reliance mall','Aurangabad',423060,'Bunglow',4,17000,1004,'SG17','B004');
INSERT INTO PROPERTY_FOR_RENT(PROPERTY_ID,STREET,CITY,POSTAL_CODE,PROPERTY_TYPE,ROOMS,RENT,OWNER_ID,STAFF_ID,BRANCH_ID) VALUES (3005,"Baker's Street",'London',423067,'Villa',4,34000,1003,'SG17','B001');

/*Viewing Table*/

INSERT INTO VIEWING(CLIENT_ID,  PROPERTY_ID,VIEW_DATE,COMMENT) VALUES ('C001',3001,'2022-09-20','Liked');
INSERT INTO VIEWING(CLIENT_ID, PROPERTY_ID,VIEW_DATE,COMMENT) VALUES ('C002',3002,'2022-08-20','Liked');
INSERT INTO VIEWING(CLIENT_ID, PROPERTY_ID,VIEW_DATE,COMMENT) VALUES ('C003',3003,'2022-09-02',NULL);
INSERT INTO VIEWING(CLIENT_ID, PROPERTY_ID,VIEW_DATE,COMMENT) VALUES ('C004',3002,'2022-05-20',NULL);
INSERT INTO VIEWING(CLIENT_ID, PROPERTY_ID,VIEW_DATE,COMMENT) VALUES ('C005',3005,'2022-02-20','Liked');

/*REGISTRATION*/


INSERT INTO REGISTRATION(CLIENT_ID, BRANCH_ID, STAFF_ID, DATE_JOINED) VALUES ('C001','B001','SG14','2022-09-29');
INSERT INTO REGISTRATION(CLIENT_ID, BRANCH_ID, STAFF_ID, DATE_JOINED) VALUES ('C002','B001','SG15','2022-09-08');
INSERT INTO REGISTRATION(CLIENT_ID, BRANCH_ID, STAFF_ID, DATE_JOINED) VALUES ('C003','B001','SG16','2022-09-10');
INSERT INTO REGISTRATION(CLIENT_ID, BRANCH_ID, STAFF_ID, DATE_JOINED) VALUES ('C004','B001','SG17','2022-09-25');
INSERT INTO REGISTRATION(CLIENT_ID, BRANCH_ID, STAFF_ID, DATE_JOINED) VALUES ('C005','B001','SG18','2022-09-21');


