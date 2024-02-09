create database joins;
use joins;

create table customer(customerid int, cust_name char(20), cust_address char(20));

create table orders(customerid int,order_id int,order_name char(20));

insert into customer values(1,'abhi','india'),
(2,'ram','usa'),(3,'user 3','uk'),(4,'user 4','asia'),(5,'user 5','russia');

insert into orders values(1,580,'iphone'),(2,581,'imac'),(4,582,'asus');



/* inner join : it returns the matching data only from both the tables */ 

select * from customer 
inner join orders
on customer.customerid = orders.customerid order by customer.customerid ;



/* left outer join : it return all the data from table 1 and matching data from table 2 */

select customer.cust_name,orders.order_id,orders.order_name from customer
left outer join orders
on customer.customerid = orders.customerid order by customer.customerid ;


/* right outer join - return all the data from table 2 and matching data from table 1 */ 

select customer.cust_name,orders.order_id,orders.order_name from customer
right outer join orders
on customer.customerid = orders.customerid order by orders.order_id ;


/* full outer join */ 

select * from customer
full outer join orders
on customer.customerid = orders.customerid order by customer.customerid ;



/* natural join -  it removes the duplicate columns*/ 



/* cross join : cartesian product of rows from rowsets, it will combine each row from the first rowset with each row from the second rowset. */ 

select prize,cust_name from customer
cross join orders ;

insert into customer values(10,'user10','india'),(11,'user11','canada');

/* equi join : An equi join is any JOIN operation that uses only and only the equals sign. */

SELECT *
FROM customer 
JOIN orders
on customer.customerid = orders.customerid order by customer.customerid;

/* non equi join : <, >,BETWEEN */ 

select *
from orders
join customer
on customer.customerid < orders.order_id;




select * from customer;
select * from orders;


select customer.customerid, customer.cust_name, orders.order_name,orders.prize
from customer
left join orders
on customer.customerid = orders.customerid;



































/*

create table student(name char(20),id int,subject char(10));
create table marks(id int, subject char(10), marks int);

insert into student values('manohar',1,'maths'),('manoj',2,'science'),('mathew',3,'english');
insert into marks values(1,'maths',50),(2,'science',45),(7,'english',60);

/* left join */

select student.id, marks.subject,marks.marks from student
inner join  marks
on student.id = marks.id;

/* right join */
select student.id,student.name,marks.subject,marks.marks from marks
right outer join student
on student.id = marks.id;

/* outer join */ 
select* from marks
full outer join student
on student.id = marks.id;
*/

