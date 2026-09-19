create database Instagramdb;
show databases;
use Instagramdb;
create table users1(
userid INT Primary key, username varchar(50) unique not null,
fullname varchar(50) not null,
email varchar(50) unique not null,
passwords varchar(30) unique not null,
bio text,
is_verify boolean default false,
createdat datetime default current_timestamp

);
desc users1;
select * from users1;
alter table users1
add column phonenumber varchar(10);
desc users1;
alter table users1
modify column fullname varchar(150);
alter table users1
change column bio biography text;
alter table users1
drop column phonenumber;
truncate table users1;
drop table users1;

create table posts(
postid int primary key,
userid int not null,
caption text,
imageurl varchar(220) not null,
commenttext varchar(225) not null,
createdata datetime default current_timestamp,
foreign key (userid) references users1(userid)
);
desc posts;

