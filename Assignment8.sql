use company;

SELECT concat(FNAME," ",LNAME) as Name, v.COMMENT
FROM viewing v
INNER JOIN client_table c
ON c.CLIENT_ID = v.CLIENT_ID;

SELECT b.BRANCH_ID , s.STAFF_ID, concat(s.FNAME," ",s.LNAME) as Name  FROM branch b
INNER JOIN staff s
on b.BRANCH_ID = s.BRANCH_ID; 

SELECT b.BRANCH_ID, b.CITY , s.STAFF_ID, concat(s.FNAME," ",s.LNAME) as Name  FROM branch b
INNER JOIN staff s
on b.BRANCH_ID = s.BRANCH_ID;

SELECT s.STAFF_ID, count(p.PROPERTY_ID) as "Total Properties under Portfolio" FROM staff s
INNER JOIN property_for_rent p on
p.STAFF_ID = s.STAFF_ID GROUP BY s.STAFF_ID;

SELECT b.BRANCH_ID, b.CITY,p.PROPERTY_ID , p.CITY from branch b
LEFT JOIN property_for_rent as p
on b.BRANCH_ID = p.BRANCH_ID
UNION
SELECT  b.BRANCH_ID, b.CITY,p.PROPERTY_ID , p.CITY from branch b
RIGHT JOIN property_for_rent as p
on b.BRANCH_ID = p.BRANCH_ID;

SELECT b.BRANCH_ID, b.CITY, s.STAFF_ID, concat(s.FNAME," ",s.LNAME) as Name FROM staff s 
INNER JOIN branch as b 
on b.BRANCH_ID = s.BRANCH_ID
WHERE b.CITY = "London";

SELECT b.BRANCH_ID, s.STAFF_ID, count(p.PROPERTY_ID) as "Total Properties under Portfolio"
FROM staff s
INNER JOIN property_for_rent p on
p.STAFF_ID = s.STAFF_ID 
INNER JOIN branch b ON
b.BRANCH_ID = s.BRANCH_ID
GROUP BY s.STAFF_ID;

SELECT * 
FROM property_for_rent 
WHERE OWNER_ID = (SELECT OWNER_ID 
FROM property_for_rent 
GROUP BY OWNER_ID HAVING COUNT(PROPERTY_ID) > 1);

SELECT b.BRANCH_ID, o.* FROM property_for_rent p
INNER JOIN private_owner o ON
p.OWNER_ID = o.OWNER_ID
INNER JOIN branch b ON
b.BRANCH_ID = p.BRANCH_ID;

SELECT b.*, SUM(SALARY) FROM branch b
INNER JOIN staff s
ON b.BRANCH_ID = s.BRANCH_ID
GROUP BY b.BRANCH_ID;

SELECT p.* FROM property_for_rent p
INNER JOIN viewing v 
ON p.PROPERTY_ID = v.PROPERTY_ID
GROUP BY v.PROPERTY_ID HAVING COUNT(v.PROPERTY_ID) >1;






