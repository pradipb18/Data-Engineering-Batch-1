create database diagrams;
use diagrams;

create table salestable(product_id int not null primary key, order_id int not null, customer_id int not null, employeer_id int not null, 
total int not null , Quantity int not null, discount int );
create table time_dimension(order_id int not null primary key,order_date date not null);
create table customer_dimension(customer_id int not null primary key, customer_name char(30) not null, address varchar(50) not null, 
city char(25) not null, zip int not null);
create table product_dimension(product_id int not null primary key, Product_name varchar(50) not null , product_prize decimal not null);
create table emp_dimension(employeer_id int not null primary key, emp_name varchar(30) not null, department varchar(25) not null);





select * from salestable;
select * from time_dimension;
select * from customer_dimension;
select * from product_dimension;
select * from emp_dimension;
