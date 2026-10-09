
-- system functions
select version();
select database();
select user();
select connection_id();

create table customers(
id int auto_increment primary key,
name varchar(50),
city varchar(50)
);
insert into customers (name,city)
values ('rahul','hyderabad');
select last_insert_id();
create table online_customers(
id int,
name varchar(50)
);
create table store_customers (
id int,
name varchar(50)
);

insert into online_customers values
(1,'abhi'),
(2,'priya'),
(3,'arjun'),
(4,'anil'),
(5,'abdul'),
(6,'amai');

insert into store_customers values 
(1,'abhi'),
(2,'priya'),
(3,'arjun'),
(4,'anil'),
(5,'abdul'),
(6,'reena'),
(7,'divaya'),
(8,'meena');
-- union operations
select name from online_customers
union 
select name from store_customers;
-- union all operation including duplicates
select name from online_customers
union all
select name from store_customers;
-- in operation
select name from online_customers
where name in(select name from store_customers);
-- not in operation
select name from online_customers
where name not in(select name from store_customers);




