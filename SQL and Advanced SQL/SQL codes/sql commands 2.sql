use SQLCOMMMANDS;



/* TCL COMMANDS*/
CREATE TABLE CUSTOMERS (
   ID INT NOT NULL,
   NAME VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2),
   PRIMARY KEY (ID)
);

INSERT INTO CUSTOMERS VALUES 
(1, 'Ramesh', 32, 'Ahmedabad', 2000.00),
(2, 'Khilan', 25, 'Delhi', 1500.00),
(3, 'Kaushik', 23, 'Kota', 2000.00),
(4, 'Chaitali', 25, 'Mumbai', 6500.00),
(5, 'Hardik', 27, 'Bhopal', 8500.00),
(6, 'Komal', 22, 'Hyderabad', 4500.00),
(7, 'Muffy', 24, 'Indore', 10000.00);









/*  HAVVING AND GROUP BY CLAUSE */
select count(salary)as counts,salary from CUSTOMERS group by salary having salary > 5000;













/* TCL COMMANDS */ 
/* inserted the data and commited it */

begin tran;
INSERT INTO CUSTOMERS VALUES (580, 'abhi', 32, 'Ahmedabad', 2000.00);
commit;


/* now deleted the data, and it rollbacked to original one , deleted abhi and it rolled back */
begin tran;
delete from CUSTOMERS where name='abhi';
rollback;

/* once commited they wont rollback */
INSERT INTO CUSTOMERS VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00);
begin tran;
delete from CUSTOMERS where name='hardik';
commit;
/*  in order to avoid that we use save point */ 
/* now lets use the save point and get roll back*/

/* used save point at the time of inserting so that we can roll back to this point */

begin tran;
INSERT INTO CUSTOMERS VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00);
save tran d2;


/* now lets delete the same data that is inserted i.e 'hardik' and again roll back it using save point*/


delete from CUSTOMERS where name='hardik';

/*  now lets roll back using save point */

rollback tran d2;

/*  see the results*/ 





SELECT * FROM CUSTOMERS;

DELETE CUSTOMERS;





