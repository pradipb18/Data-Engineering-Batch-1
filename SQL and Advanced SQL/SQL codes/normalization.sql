create database normalization;
use normalization;


/* using default */

Create table Demo(Id int,name varchar(50),Salary int default 15000)

insert into demo values(25,'abhi',25000),(25,'ram',0);

/* unique - the specified column data must not be duplicate or repeated values */

Create table demo1(id int unique,name varchar(50),price int unique);

insert into demo1 values(1,'abhi',25000),(1,'ram',10000); /* not possible because same id is given i.e 1 */

insert into demo1 values(1,'abhi',25000),(2,'ram',10000);

select distinct * from demo1;


/* default */ 

Create table demo3(id int primary key, salary int default 5000);
insert into demo3(id) values(1);


select distinct * from demo3;

/* primary key constraint */ 


insert into demo2(id,salary)values(1,100);
insert into demo2(id,salary)values(3,300);
insert into demo2(id,salary)values(4,200);
insert into demo2(id,salary)values(2,100);
select * from demo2;

/* it wont work as primary key does not allow duplicates */ 

insert into demo2(id,salary)values(1,500);











/* composite key */

/*composite primary key */
create table demo4(id int,name varchar(50),primary key(id,name));
insert into demo4(id,name)values (1,'john');
insert into demo4(id,name)values (1,'prit');
insert into demo4(id,name)values (2,'swis');
insert into demo4(id,name)values (5,'lee');
select * from demo4;
insert into demo4(id,name)values (1,'john');



/* foriegn key constraint */ 
/* here in table 1 id is primary key and in table 2 id acts as foriegn key */

Create table employee(id int primary key,name varchar(50),age int);

Create table company(email varchar(50),address varchar(50),id int primary key, foreign key(id) references employee(id));
select * from employee;
select * from company;

insert into employee values(1,'abhi',22),(2,'ram',23),(3,'manoj',20);
