USE company;
SELECT * FROM company.property_for_rent ORDER BY PROPERTY_TYPE;

SELECT * FROM company.property_for_rent WHERE RENT > 15000 ORDER BY RENT ASC ;

SELECT S.POSITION,P.* FROM company.property_for_rent AS P 
INNER JOIN company.staff AS S
ON P.STAFF_ID = S.STAFF_ID
ORDER BY P.BRANCH_ID, S.POSITION;

SELECT S.STAFF_ID,V.* FROM company.viewing AS V
INNER JOIN company.property_for_rent AS P
ON P.PROPERTY_ID = V.PROPERTY_ID
INNER JOIN company.staff AS S
ON S.STAFF_ID = P.STAFF_ID
ORDER BY S.STAFF_ID;

SELECT B.BRANCH_ID,V.CLIENT_ID,V.PROPERTY_ID,V.VIEW_DATE FROM company.viewing AS V
INNER JOIN company.property_for_rent AS P
ON P.PROPERTY_ID = V.PROPERTY_ID
INNER JOIN company.branch AS B
ON B.BRANCH_ID = P.BRANCH_ID
ORDER BY B.BRANCH_ID;

SELECT POSITION,STAFF.* FROM company.staff  ORDER BY POSITION;

SELECT * from company.branch WHERE CITY IN ("London","Manchester") ORDER BY CITY;

