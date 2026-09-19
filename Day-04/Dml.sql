create database Instagramdb;
use Instagramdb;
show databases ;
create table users1(
userid INT Primary key unique not null,
fullname varchar(50) not null,
email varchar(50) unique not null,
passwords varchar(30) unique not null,
bio text,
is_verify boolean default false,
createdat datetime default current_timestamp

);
insert into users1(Userid,fullname,email,passwords)
value(1,'abilash','abilash@gmail.com','abilash@12');

insert into users1(Userid,fullname,email,passwords) values
(2,'mahesh','mahesh@gmail.com','mahesh12'),
(3,'abilash','abilash@gmail.com','abilash@12');

select * from users1;
update users1
set bio = 'coder'
where userid = 2;

update users1
set passwords = "abilash12"
where email = 'abilash@gmail.com';

select @@sql_safe_updates;
set sql_safe_updates = 0;
delete from users1
where email = 'abilash@gmail.com';
delete from users1
where userid = 1;




