/*
select * from sys.databases;

create database AmanDb;
use AmanDb;
create table Students(rollno int,Age int,
gender char(10),Name varchar(50));

select * from students;

Select * from INFORMATION_SCHEMA.tables;
use master;
drop database AmanDb;
*/
-- single line comment;
/* 
multiple 
line
comment
*/


select * from sys.databases;

drop database Amandb;
create database Test2;

create table Employee(empid int,name varchar(255)
,salary float,address  varchar(255),DOB date,description text);

exec sp_help employee;

insert into employee values(101,'Aman',5000.677,
'delhi - 110096','1999/04/22','hello everyone');

insert into employee values(101,'Aman',5000.677,
'delhi - 110096','1999/5/22','hello everyone');

insert into employee values(102,'Aman',5000.677,
'delhi - 110096','2000/10/25','hello everyone');

insert into employee values(101,'Aman',5000.677,
'delhi - 110096','1999-5-22','hello everyone');

-- insert into employee values(101,'Aman',5000.677,
-- 'delhi - 110096','1999-22-5','hello everyone');  error

select * from Employee;

truncate table employee;
drop table employee;
drop database test2;

use test2;

select name,dob from employee;

insert into employee(name,dob) values('amit','1975-6-23');

select name,dob from employee where name='aman';

update employee set dob='1947/08/15' where name='aman';

delete from employee where name='amit';


-- 
use Test2;

create table Students(rollno int);

insert into Students values(21);

alter table students add address varchar(10),gender char(10);--adding columns
alter table students drop column gender,address;--dropping columns
alter table students alter column gender varchar(30); --modifying columns
exec sp_rename 'students' ,'Employee'; --table rename
exec sp_rename 'students.gender' ,'gen'; --column rename






exec sp_help students;

select * from Students;
select * from Employee;


drop table employee;