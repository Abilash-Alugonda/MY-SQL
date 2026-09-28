-- transactions in sql 
-- create database
create database if not exists BankDB;
use BankDB;
-- create table
create table accounts(
acc_no int primary key,
name varchar(50),
balance decimal(10,2)
);
-- insert sample data
insert into accounts values
(106,'arjun',15000.00),
(102,'priya',10000.00);

-- check initial data
select * from accounts;
select @@autocomit;
set autocommit = 0;
start transaction;
-- detuct 5000 from arjun
update accounts 
set balance = balance - 5000
where acc_no =106;
-- add 5000 to priya
update accounts
set balance = balance + 5000
where acc_no = 102;
-- check before commit
select * from accounts;

-- save changes permanently
commit;
-- check after commit
select * from accounts;
start transaction;
update accounts
set balance =balance - 2000
where acc_no = 106;
-- check before rollback
select * from accounts;
-- cancel transaction
rollback;
-- check after rollback(balance should be unchanged)
start transaction;
-- detuct 1000
update acccounts
set balance = balance - 1000
where acc_no = 106;

select * from accounts;
-- create savepoint
savepoint after_deduction;

-- step 2 : add 1000
update accounts
set balance = balance + 1000
where acc_no = 102;

select * from accounts;
-- supposesomething goes wrong
-- rollback only to savepoint
rollback to after_deduction;
-- final commit
commit;
-- final data check
select * from accounts;


