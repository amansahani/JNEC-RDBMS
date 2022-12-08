/*Section 1: DDL*/

CREATE DATABASE Assignment5;
USE Assignment5;

CREATE TABLE Department(
   Department_ID   INTEGER PRIMARY KEY 
  ,Department_Name VARCHAR(30)
  );
INSERT INTO Department(Department_ID,Department_Name) VALUES (10,'Production');
INSERT INTO Department(Department_ID,Department_Name) VALUES (20,'AF');
INSERT INTO Department(Department_ID,Department_Name) VALUES (30,'Sales');
INSERT INTO Department(Department_ID,Department_Name) VALUES (40,'Maintenance');

CREATE TABLE Employee(
   Employee_ID   INTEGER  NOT NULL PRIMARY KEY 
  ,Employee_Name VARCHAR(30) 
  ,Position      VARCHAR(30) 
  ,Department_ID INTEGER 
  ,DOB           DATE  
  ,Joining_Date  DATE  
  ,Manager_ID    INTEGER 
  ,Salary        INTEGER  
);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (101,'Anil','salesman',30,'1962-11-05','1996-01-01',107,45000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (102,'Ravi','Accountant',20,'1991-03-02','2001-04-01',109,37000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (103,'Ram','Salesman',30,'1992-03-02','2000-07-05',107,42000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (104,'Seema','Prod',10,'1994-01-03','2010-03-15',113,38000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (105,'Rita','Accountant',20,'1994-08-02','2019-04-01',109,28000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (106,'Kishan','Prod',10,'1995-03-10','2015-03-01',113,32000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (107,'Milind','Mgr',20,'1970-02-13','1999-08-02',NULL,75000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (108,'Mahima','Accountant',20,'1998-04-09','2002-04-01',107,25000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (109,'Ketki','Mgr',30,'1991-01-26','2006-07-05',NULL,72000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (110,'Sunil','salesman',30,'2005-06-05','2005-06-05',107,31000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (111,'Manoj','salesman',30,'1961-02-01','2010-02-01',107,33000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (113,'Ramesh','Mgr',10,'2000-01-03','2000-01-03',NULL,70000);
INSERT INTO Employee(Employee_ID,Employee_Name,Position,Department_ID,DOB,Joining_Date,Manager_ID,Salary) VALUES (114,'Mittal','CEO',NULL,'1969-03-01','1996-01-01',NULL,500000);

/*Section 2: DML*/

SELECT COUNT(DISTINCT(Position)) AS "Number of available jobs" FROM Employee;
SELECT COUNT(Employee_ID) FROM Employee;
SELECT Department_ID, Employee_ID, Employee_Name FROM Employee;

SELECT SUM(Salary) AS "Total Salary", 
MAX(Salary) AS "Maximum Salary", 
MIN(Salary) AS "Minimum Salary", AVG(Salary) AS "Average Salary"  
FROM Employee WHERE Department_ID = 20;  

SELECT AVG(Salary) AS "Average Salary" 
FROM Employee WHERE Department_ID=10;

SELECT MAX(Salary) AS "Maximum Salary of Salesman"
FROM Employee WHERE Position = 'salesman';

SELECT CONCAT(UPPER(SUBSTR(Employee_Name,1,1)), SUBSTR(Employee_Name,2)) AS "Manager Name" 
FROM Employee WHERE Position='Mgr';

SELECT Employee_Name, ROUND((DATEDIFF(CURDATE(),DOB)/365)) AS "Age"
FROM Employee WHERE ROUND((DATEDIFF(CURDATE(),DOB)/365)) >50;

SELECT Employee_Name,
ROUND((DATEDIFF(CURDATE(),Joining_Date)/365)) AS "Years of service" 
FROM Employee WHERE Department_ID=30; 

SELECT Employee_ID, Employee_Name 
FROM Employee WHERE Department_ID IS NULL && Manager_ID IS NULL;

SELECT Position, SUM(Salary) AS "Total Salary" 
FROM Employee GROUP BY(Position) ORDER BY Salary DESC;

SELECT COUNT(Position) AS "Number of Managers" 
FROM Employee WHERE Position='Mgr';

SELECT Position, MAX(Salary), MIN(Salary) FROM Employee GROUP BY Position;

SELECT Employee_Name AS "Employee's who are getting retired this year " FROM Employee WHERE ROUND((DATEDIFF(CURDATE(),DOB)/365))>55;

SELECT AVG(ROUND((DATEDIFF(CURDATE(),DOB)/365))) FROM Employee;

SELECT Employee_Name,
ROUND((DATEDIFF(CURDATE(),Joining_Date)/365)) AS "Years of service" 
FROM Employee;

