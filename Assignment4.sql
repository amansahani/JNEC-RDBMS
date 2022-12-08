Use company;

ALTER TABLE staff ALTER POSITION DROP DEFAULT,
ALTER SEX SET DEFAULT "f";

ALTER TABLE client_table ADD COLUMN PrefNoOfRooms INTEGER;

ALTER TABLE staff
ADD CONSTRAINT FOREIGN KEY (BRANCH_ID) 
REFERENCES branch(BRANCH_ID) ON DELETE CASCADE;  

SELECT * FROM staff LIMIT 5;
SELECT * FROM branch LIMIT 5;

DELETE FROM branch WHERE BRANCH_ID = "B001";
SELECT * FROM staff LIMIT 5;
SELECT * FROM branch LIMIT 5;



ALTER TABLE private_owner 
DROP TELEPHONE_NO, ADD COLUMN MOBILE_NO INTEGER;

UPDATE private_owner SET MOBILE_NO = (1111712222) WHERE OWNER_ID=1001;
UPDATE private_owner SET MOBILE_NO =(1119112222) WHERE OWNER_ID=1002;
UPDATE private_owner SET MOBILE_NO =(1118112222) WHERE OWNER_ID=1003;
UPDATE private_owner SET MOBILE_NO =(1111122322) WHERE OWNER_ID=1004;
UPDATE private_owner SET MOBILE_NO =(1111154884) WHERE OWNER_ID=1005;

DROP TABLE registration;