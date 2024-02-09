/* string functions */
select ascii('a');

select upper('abhi') as upcase;

select len('abhi') as lengthy;

select concat('abhi',' ','ram') as concat1;

select 'abhi'+' '+'ram' as concat2 ;

SELECT LEFT('data engineering', 3) AS ExtractString; /* extracts characters from left */

SELECT LOWER('ABHI RAM') as lowername;

select ltrim('   abhi');

select rtrim('abhi      ') as righttrim;

select replace('abhi','a','r');

SELECT str (1564.58,4,3);

SELECT SUBSTRING('data engineering ', 1, 3) AS ExtractString;  /* substring('string','start_value','end_value')*/

/* date functions   */

SELECT dateadd (mm, 2, '2010-02-03'); /* 2 months are added to given date */ 
SELECT dateadd (yy, 2, '2010-02-03'); /* 2 years are added to given date */ 
SELECT dateadd (dd, 2, '2010-02-03'); /* 2 days are added to given date */ 

/* date difference gives the difference for days,months, years for the given date */

SELECT datediff ( month, convert (datetime, '2009-01-06'), convert ( datetime, '2009-05-01'))  as monthdiff; 
SELECT datediff ( year, convert (datetime, '2006-05-06'), convert ( datetime, '2009-01-01'))  as yeardiff;
SELECT datediff ( day, convert (datetime, '2009-01-06'), convert ( datetime, '2009-05-01'))  as daydiff;

/* datepart returns month/year/date value */

SELECT datepart (mm, '2008-06-01');
SELECT datepart (yy, '2008-06-01');
SELECT datepart (dd, '2008-06-01');


SELECT day ( '2010-03-21');
SELECT month ('2007-04-03');
SELECT year ( '2011-04-17');


/* math functions */ 

SELECT abs (-77)  /*Returns 77, an absolute value.*/

SELECT sin(0)   /*Returns trignometric values.*/

SELECT ceiling (15.25) /* rounds the specified value. */


SELECT exp (4.5) /* Returns the exponential value of the specified parameter. */ 

SELECT floor (15.565) /* rounds the specified value. */ 

SELECT log (5.4) /* Returns log value of specified value */ 

/* system functions */ 


select HOST_ID() as id;
select host_name() as hostname;

/* ranking functions  */

/* row number */
select id,name,ROW_NUMBER() over (order by id desc ) as rankresult from student;

/* rank */

select id,name,RANK() over (order by id  ) as rankresult from student;

/* dense rank */

select id,name, dense_rank() over (ORDER BY name desc) as denserank from student;

/* ntitle */

select *, NTILE(2) over ( order by marks desc ) as grade from student where marks>20;





alter table orders add price int;
update orders set price=65000 where order_name='asus';

/* aggregate functions */ 

select avg(price) as avg_sales from orders; /* avg */

select sum(price) as total_sales from orders where month='september'; /* sum */

select count(customerid) as no_of_clients from orders where MONTH='september'; /* count */


select min(prize) as least_product from orders; /* min */ 

select max(prize) as high_product from orders; /* max */

select order_name, 'MINIMUM'=min(price), 'MAXIMUM'=max(price) from orders group by price;

Select price,order_name from orders where price= (select min(price) from orders);

select min(prize) as minam,order_name 
from orders
group by order_name
order by minam;



/*
update orders set month='september' where order_name='imac';
update orders set month='january' where order_name='iphone';
update orders set month='september' where order_name='asus';
insert into orders values (3,583,'acer',75000,'january'),(5,584,'lenovo',45000,'june'),(6,585,'iqoo',32000,'july');

*/

select * from customer;
select * from orders;

