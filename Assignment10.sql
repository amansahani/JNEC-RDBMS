USE Assignment9;

CREATE VIEW view1 AS
SELECT e.Emno, e.ename, d.loc
FROM employee e
INNER JOIN Department d 
ON e.dept_no = d.dept_no;

CREATE VIEW view2 AS
SELECT DISTINCT(Job) FROM 
Employee;

SELECT * FROM view1;
SELECT * FROM view2;

DROP VIEW view1;