create database subqueries;
use subqueries;

create table studentsdetails (name char(15), roll int, loaction char(15));

create table sectiondetails (name char(15), roll int, section char(5));

insert into studentsdetails values('abhi',580,'Delhi'),('kiran',581,'assam'),
('aditya',582,'hyderabad'),
('ram',583,'mumbai');



insert into sectiondetails values('abhi',580,'A'),('ram',583,'A'),
('kiran',581,'B'),('aditya',582,'C');




/* subqueries */ 

/* select */ 
select distinct * from studentsdetails
where roll in ( select roll from sectiondetails where section='A');

select studentsdetails.name,studentsdetails.roll , sectiondetails.section from studentsdetails
join sectiondetails on studentsdetails.roll = sectiondetails.roll
where sectiondetails.section='A';

select name,roll
from studentsdetails
where roll in
(select roll from sectiondetails where roll>581);

/* update */ 
update sectiondetails 
set section='A'
where name in ( select name from sectiondetails where name='aditya');





/*
begin tran;
select studentsdetails.name,studentsdetails.roll , sectiondetails.section from studentsdetails
join sectiondetails on studentsdetails.roll = sectiondetails.roll
where sectiondetails.section='A';
save tran del5;*/


select * from studentsdetails;




/* insert */ 
insert into studentsdetails select * from sectiondetails;


 rollback tran del5; 

select * from studentsdetails;
select * from sectiondetails;

/* exists */ 
SELECT name,roll
FROM studentsdetails
WHERE EXISTS
(SELECT section FROM sectiondetails WHERE studentsdetails.roll = sectiondetails.roll and section='B');


/* all keyword */

SELECT ALL name,roll
FROM studentsdetails
WHERE roll > 581;





/* any keyword */

SELECT name
FROM studentsdetails
WHERE roll = ANY
  (SELECT roll
  FROM sectiondetails
  WHERE roll > 581);


create table products (ProdcutID INT, ProductName varchar(255), 
                      SupplieriD INT, CategoryID INT);

Insert into products values (1, 'chais', 1, 1),
                            (2, 'chang', 1, 1),
							(3, 'Aniseed syrup',1, 2),
							(4, 'Chef Antons Cajun Seasoning',2, 2),
							(5, 'Chef Antons Gumbo Mix',2, 2);

create table suppliers (supplierID INT, supplierName varchar(255), 
                        ContactName VARCHAR(255),  Address varchar(255));

Insert into suppliers values (1, 'Exotic Liquid',              'Charlotte Cooper', '49 Gilbert st'),
                            (2, 'New Orleans Cajun Delights', 'shelley burke', 'P.O.Box 78934'),
							(3, 'Grandma Kellys Homestead','   Regina Murphy','707 Oxford Rd'),
							(4, 'Tokyo Traders','Yoshi Nagase','9-8 Sekimai Musashino-shi');
							
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID );

create table orderdetails (OrderDetailID int, OrderID int, ProductID int, Quantity int);

insert into orderdetails values(1, 10248, 11, 12);
insert into orderdetails values(2,10248, 42, 10);
insert into orderdetails values(3,10248,72,5);
insert into orderdetails values(3,10248,72,5);
insert into orderdetails values(4, 10249, 14,9);
insert into orderdetails values(5,10249,51,40);
insert into orderdetails values(6,10250,41,10);
insert into orderdetails values(7,10250,51,35);

SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 7);

update orderdetails set ProductID=1 where ProductID=11;
update orderdetails set ProductID=2 where ProductID=42;
update orderdetails set ProductID=4 where ProductID=14;
update orderdetails set ProductID=5 where ProductID=51;

Exec sp_rename 'Products.prodcutid', 'productID', 'column';

SELECT ProductName
FROM Products
WHERE Products.productID = ALL
(SELECT ProductID
  FROM OrderDetails
  WHERE Quantity < 14);





select * from Suppliers;
select * from products;
select * from orderdetails;


/* set memberships */ 

/* IN */ 

SELECT *
FROM studentsdetails
WHERE roll IN (580);





select *
from studentsdetails
where roll in
(select roll from sectiondetails );


/*not in */ 

SELECT roll, name
FROM studentsdetails 
WHERE roll NOT IN (SELECT roll
                 FROM sectiondetails);

select * from studentsdetails;
select * from sectiondetails;

/* insert into sectiondetails values('kapoor',587,'asia');  */

create table employeedetails(jobid varchar(50), departmentid int, salary int);

insert into employeedetails values('IT_PROG', 60,5760);

insert into employeedetails (jobid,salary, departmentid) values
('AC_ACCOUNT', 8300, 110),
('ST_MAN', 7280,   80),
('AD_ASST', 4400, 90),
('SH_CLERK', 3215,50),
('FI_ACCOUNT', 7920, 90),
('PU_CLERK', 780, 70),
('SA_REP', 8350, 80),
('MK_REP', 6000, 80),
('ST_CLERK', 2785, 50);

  

SELECT jobid,AVG(salary) 
FROM employeedetails   
GROUP BY jobid   
HAVING AVG(salary)<10000;



select * from employeedetails;


/* nested queries */ 



create table stu(sid int not null primary key,sname varchar(40),semail varchar(50))
create table stu_course(sid int,cid int,enroll_date DATE);
create table dept(did int not null primary key,dname varchar(50))
create table course(cid int not null primary key,cname varchar(40),ccredits int,cfee float,did int)
select name from sys.tables

insert into stu(sid,sname,semail) values (1,'harry potter','harry@gmail.com');
insert into stu(sid,sname,semail) values (2,'ronald weasley','ron@gmail.com');
insert into stu(sid,sname,semail) values (3,'hermione granger','hermione@gmail.com');
insert into dept(did,dname) values (1,'IT');
insert into dept(did,dname) values (2,'COMPS');
insert into course(cid,cname,ccredits,cfee,did) values (1,'SQL Programming', 80, 12000, 1);
insert into course(cid,cname,ccredits,cfee,did) values (2,'Java Programming', 100, 18000, 2);
insert into course(cid,cname,ccredits,cfee,did) values (3,'Angular Programming', 80, 15000, 1);
insert into stu_course(sid,cid,enroll_date) values (1,1,'2022-05-21');
insert into stu_course(sid,cid,enroll_date) values (1,3,'2022-05-21');
insert into stu_course(sid,cid,enroll_date) values (2,1,'2022-05-18');
insert into stu_course(sid,cid,enroll_date) values (3,2,'2022-05-20');
insert into stu_course(sid,cid,enroll_date) values (3,3,'2022-05-15');

/* shows the details of students belongs to it dept */

select *
from stu
where sid IN (select sid from stu_course where cid IN ( select cid from course where did IN (select did 
from dept where dname='IT')));

select stu.sid, stu.sname from stu
where sid in ( select sid from stu_course where cid in (select cid from course where cname = 'angular programming'));


/* Display all students that have enrolled in sql programming */
select sid,sname from stu 
where sid in (select sid from stu_course where cid in (select cid from course where cname = 'SQL Programming'));


select * from stu
select * from dept
select * from course
select * from stu_course

select distinct g.sid , g.sname
from stu as g
join stu_course as z
on g.sid = z.sid where z.sid = 1 ;

select g.*,z.cname,z.ccredits
from stu as g
inner join stu_course as z
on g.sid = z.sid ;




/* stored procedure in sql */ 

/* procedure with single values */ 

CREATE PROCEDURE pro1
AS
SELECT * FROM studentsdetails
go;

exec pro1;


CREATE PROCEDURE pro3
AS
SELECT * FROM studentsdetails where location='hyderabad'
go

exec pro3;

create procedure pro6
as
select * from studentsdetails where location = 'india';

exec pro6 ;

/* procedure with single variables */

create procedure pro7 @location varchar(20)
as
select * from studentsdetails where location = @location;

exec pro7 @location ='india' ;

/* procedure with multiple variables */

create procedure pro8 @location varchar(20), @roll int
as
select * from studentsdetails where location = @location or roll = @roll;

exec pro8 @location ='hyderabad',@roll = 582 



create procedure pro9 @location varchar(20), @roll int
as
select * from studentsdetails where location = @location and roll = @roll;

exec pro8 @location ='hyderabad',@roll = 582 


create procedure pro10 @location varchar(20)
as
select name from studentsdetails where location = @location;

exec pro10 @location ='india' ;



/* drop procedure pro8; */

select * from studentsdetails;

select * from sectiondetails;

insert into studentsdetails values ('abhi',588,'asia');


/* Cleaning data set 

we have duplicate row i.e " abhi " repeating 2 times in student details table. We need to delete one of the row  */ 


SELECT name,COUNT(name) as countn
FROM studentsdetails
GROUP BY name
HAVING COUNT(name) > 1;

/* we got the rows which are duplicate */

/* now lets add row number to the data */ 

SELECT name, ROW_NUMBER() OVER(PARTITION BY name order by name) AS duplicate
FROM studentsdetails;

/* now we got the data with duplicate values with row number */ 

/* lets delete the data using row number */ 


WITH cte AS (SELECT name,ROW_NUMBER() OVER (PARTITION BY name ORDER BY name ) AS duplicate FROM studentsdetails)
DELETE FROM cte

WHERE duplicate > 1;

/* removing null values from data sets */ 

insert into studentsdetails (name) values(null);

/* we have null values in the 3rd of the data , now we need to remove the data due to inconsistency */ 

SELECT *
FROM studentsdetails
WHERE NAME IS NULL; 

DELETE FroM studentsdetails
where name is null;



/* updating the data */ 

update studentsdetails
set location = 'mumbai' where roll = 583; 


update studentsdetails
set location = 'chennai' where roll = 582; 



UPDATE studentsdetails
SET location = UPPER(location);

/* partition by */ 


create table cars(car_make char(25), car_model char(25), car_type char(25), car_prize int);

insert into cars values ('Ford', 'Mondeo', 'premium', 18200);
insert into cars values ('Renault', 'Fuego', 'sport', 16500);
insert into cars values ('Citroen', 'Cactus', 'premium', 19000);
insert into cars values ('Ford', 'Falcon', 'sport', 16500);
insert into cars values ('Ford', 'Galaxy', 'standard', 12400);
insert into cars values ('Renault', 'Megane', 'standard', 14300);
insert into cars values ('Citroen', 'Picasso', 'premium', 23400);

/* partition by */ 

SELECT car_make, car_model, car_prize,
AVG(car_prize) OVER() AS "overall average price",
AVG(car_prize) OVER (PARTITION BY car_type) AS "car type average price"
FROM cars;

/* It group by each car_make attribute of the car */ 


SELECT car_make,
AVG(car_prize) AS average_price,
MAX(car_prize) AS top_price
FROM cars
GROUP BY car_make;

/* It will make groups of each model */


SELECT car_make, car_model, car_prize,
AVG(car_prize) OVER (PARTITION BY car_make) AS average_make
FROM cars;



select * from cars;