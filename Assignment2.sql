DROP DATABASE company;
CREATE DATABASE Company;

USE Company;

CREATE TABLE BRANCH(
    BRANCH_ID VARCHAR(20) PRIMARY KEY,
    STREET VARCHAR(500),
	CITY VARCHAR(50),
    POSTAL_CODE INTEGER
);

CREATE TABLE STAFF(
    STAFF_ID VARCHAR(20) PRIMARY KEY,
    FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    POSITION VARCHAR(25) DEFAULT 'Assitant',
    SEX CHAR(2) CHECK (SEX IN ('m','f')),
    DOB DATE,
    SALARY INTEGER,
    BRANCH_ID VARCHAR(20),
    FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) ON DELETE CASCADE
);

CREATE TABLE CLIENT_TABLE (
    CLIENT_ID VARCHAR(20)  PRIMARY KEY,
    FNAME VARCHAR(25),
    LNAME VARCHAR(25),
    TELEPHONE_NO INTEGER,
    PREFERENCE VARCHAR(20) CHECK (
        PREFERENCE IN ('1BHK', '2BHK', 'Bunglow', 'Villa', 'PG4')
    ),
    MAXRENT INTEGER
);

CREATE TABLE PRIVATE_OWNER(
    OWNER_ID INTEGER PRIMARY KEY,
    FNAME VARCHAR(20),
    LNAME VARCHAR(20),
    ADDRESS VARCHAR(300),
    TELEPHONE_NO INTEGER
);

CREATE TABLE PROPERTY_FOR_RENT(
    PROPERTY_ID INTEGER PRIMARY KEY,
    STREET VARCHAR(300),
    CITY VARCHAR(25),
    POSTAL_CODE INTEGER,
    PROPERTY_TYPE VARCHAR(20) 
    CHECK (PROPERTY_TYPE IN 
    ('1BHK', '2BHK', 'Bunglow', 'Villa', 'PG4')),
    ROOMS INTEGER,
    RENT INTEGER,
    OWNER_ID INTEGER,
    STAFF_ID VARCHAR(20),
    BRANCH_ID VARCHAR(20),
    FOREIGN KEY (OWNER_ID) REFERENCES PRIVATE_OWNER (OWNER_ID) ON DELETE CASCADE,
    FOREIGN KEY (STAFF_ID) REFERENCES STAFF (STAFF_ID) ON DELETE CASCADE,
    FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH (BRANCH_ID) ON DELETE CASCADE
);

CREATE TABLE VIEWING (
    CLIENT_ID VARCHAR(20),
    PROPERTY_ID INTEGER,
    VIEW_DATE DATE,
    COMMENT TEXT,
    PRIMARY KEY(CLIENT_ID, PROPERTY_ID),
    FOREIGN KEY (PROPERTY_ID) REFERENCES PROPERTY_FOR_RENT(PROPERTY_ID) ON DELETE CASCADE,
    FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT_TABLE(CLIENT_ID) ON DELETE CASCADE
);

CREATE TABLE REGISTRATION (
    CLIENT_ID VARCHAR(20) ,
    BRANCH_ID VARCHAR(20),
    STAFF_ID VARCHAR(20),
    DATE_JOINED DATE,
    PRIMARY KEY (CLIENT_ID, BRANCH_ID, STAFF_ID),
    FOREIGN KEY (CLIENT_ID) REFERENCES CLIENT_TABLE(CLIENT_ID) ON DELETE CASCADE,
    FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID) ON DELETE CASCADE,
    FOREIGN KEY (STAFF_ID) REFERENCES STAFF(STAFF_ID) ON DELETE CASCADE
)


