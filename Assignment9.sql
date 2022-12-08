DROP DATABASE assignment9;
CREATE DATABASE Assignment9;
USE Assignment9;

CREATE TABLE Department(
   Dept_no  INTEGER  NOT NULL PRIMARY KEY 
  ,Deptname VARCHAR(20) NOT NULL
  ,Loc      VARCHAR(20) NOT NULL
);
INSERT INTO Department(Dept_no,Deptname,Loc) VALUES (10,'Accounting','New York');
INSERT INTO Department(Dept_no,Deptname,Loc) VALUES (20,'Research','Dallas');
INSERT INTO Department(Dept_no,Deptname,Loc) VALUES (30,'Sales','Chicago');
INSERT INTO Department(Dept_no,Deptname,Loc) VALUES (40,'Operations','Boston');

CREATE TABLE SalaryGrade(
   Grade       INTEGER  NOT NULL PRIMARY KEY 
  ,Low_Salary  INTEGER  NOT NULL
  ,High_Salary INTEGER  NOT NULL
);
INSERT INTO SalaryGrade(Grade,Low_Salary,High_Salary) VALUES (1,700,1200);
INSERT INTO SalaryGrade(Grade,Low_Salary,High_Salary) VALUES (2,1201,1400);
INSERT INTO SalaryGrade(Grade,Low_Salary,High_Salary) VALUES (3,1401,2000);
INSERT INTO SalaryGrade(Grade,Low_Salary,High_Salary) VALUES (4,2001,3000);
INSERT INTO SalaryGrade(Grade,Low_Salary,High_Salary) VALUES (5,3001,9999);

CREATE TABLE Employee(
   EmpNo    INTEGER  NOT NULL PRIMARY KEY 
  ,Ename    VARCHAR(20) NOT NULL
  ,Job      VARCHAR(20) NOT NULL
  ,MGR      INTEGER 
  ,Hiredate DATE NOT NULL
  ,Salary   INTEGER  NOT NULL
  ,Comm     INTEGER 
  ,Dept_no  INTEGER  NOT NULL
);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7369,'Smith','Clerk',7902,'1980-12-17',800,NULL,20);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7499,'Allen','Salesman',7698,'1981-02-20',1600,300,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7521,'Ward','Salesman',7698,'1981-02-22',1250,500,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7566,'Jones','Manager',7839,'1981-04-02',2975,NULL,20);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7654,'Martin','Salesman',7698,'1981-09-28',1250,1400,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7698,'Blake','Manager',7893,'1981-05-01',2850,NULL,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7782,'Clark','Manager',7893,'1981-06-09',2450,NULL,10);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7788,'Scott','Analyst',7566,'1982-12-09',3000,NULL,20);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7839,'King','President',NULL,'1981-11-17',5000,NULL,10);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7844,'Turner','Salesman',7698,'1981-09-08',1500,0,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7876,'Adams','Clerk',7788,'1983-01-12',1100,NULL,20);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7900,'James','Clerk',7698,'1981-12-03',950,NULL,30);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7902,'Ford','Analyst',7599,'1981-12-03',3000,NULL,20);
INSERT INTO Employee(EmpNo,Ename,Job,MGR,Hiredate,Salary,Comm,Dept_no) VALUES (7934,'Miller','Clerk',7782,'1982-01-23',1300,NULL,10);




SELECT MGR, COUNT(MGR) FROM employee GROUP BY MGR;

