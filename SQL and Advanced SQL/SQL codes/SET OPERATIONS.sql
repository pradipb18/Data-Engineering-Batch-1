use setOPERATIONS;

create table EMPLOYEE1_TABLE(ID INT, NAME CHAR(20), DEPARTMENT CHAR(50), SALARY INT, EXPERIENCE INT);
create table EMPLOYEE2_TABLE(ID INT, NAME CHAR(20), DEPARTMENT CHAR(50), SALARY INT, EXPERIENCE INT);

/* insertng values into table 1 */


INSERT INTO EMPLOYEE1_TABLE VALUES(1,'Aakash Singh','DevelopmenT',72000,2);
INSERT INTO EMPLOYEE1_TABLE VALUES(2,'Abhishek Pawar','Production',45000,1);
INSERT INTO EMPLOYEE1_TABLE VALUES(3,'Pranav Deshmukh','HR',59900,3);
INSERT INTO EMPLOYEE1_TABLE VALUES(4,'Shubham Mahale','Accounts',57000,2);
INSERT INTO EMPLOYEE1_TABLE VALUES(5,'Sunil Kulkarni','Development',87000,3);
INSERT INTO EMPLOYEE1_TABLE VALUES(6,'Bhushan Wagh','R&D',75000,2);
INSERT INTO EMPLOYEE1_TABLE VALUES(7,'Paras Jaiswal','Marketing',32000,1);

SELECT * FROM EMPLOYEE1_TABLE;
SELECT * FROM EMPLOYEE2_TABLE;


/* insertng values into table 2 */

INSERT INTO EMPLOYEE2_TABLE VALUES(1,'Prashant Wagh','R&D',49000,1);
INSERT INTO EMPLOYEE2_TABLE VALUES(2,'Abhishek Pawar','Production',45000,1); /* duplicate */ 
INSERT INTO EMPLOYEE2_TABLE VALUES(3,'Gautam Jain','Development',56000,4);
INSERT INTO EMPLOYEE2_TABLE VALUES(4,'Shubham Mahale','Accounts',57000,2); /* duplicate */ 
INSERT INTO EMPLOYEE2_TABLE VALUES(5,'Rahul Thakur','Production',76000,4);
INSERT INTO EMPLOYEE2_TABLE VALUES(6,'Bhushan Wagh','R&D',75000,2); /* duplicate */
INSERT INTO EMPLOYEE2_TABLE VALUES(7,'Anand Singh','Marketing',28000,1);


/* union operation */

/* it results all the data from both the tables and avoid duplicates */

SELECT * FROM EMPLOYEE1_TABLE UNION SELECT * FROM EMPLOYEE2_TABLE;



/* to view duplicates you can use all */

SELECT * FROM EMPLOYEE1_TABLE UNION all SELECT * FROM EMPLOYEE2_TABLE order by name;

/* intersect operation : it results the matching data from both the tables */ 

SELECT * FROM EMPLOYEE1_TABLE INTERSECT SELECT * FROM EMPLOYEE2_TABLE ;


/* except operation: it results the data from table 1 which are not there in table 2 */
SELECT * FROM EMPLOYEE1_TABLE except SELECT * FROM EMPLOYEE2_TABLE ;

