create database mydatabase;
use mydatabase;

select * from mydatabase.INFORMATION_SCHEMA.TABLES;
select * from sys.databases;

create table Student(st_id int,st_name varchar(55),
phone bigint,address nvarchar(255));

exec sp_help student;-- to see table description

insert into Student values(105,'prashant',9891062743,'delhi');
select * from student;

update Student set st_id=102;--dangereous
update Student set phone=8448179216 where st_name='naman';

delete from Student;--dangereous
delete from Student where st_name='prashant';

select st_id,st_name from Student where st_name='aman';

select distinct * from Student;-- for fetching unique rows
select * from student;

--alter table student add salary int;
update Student set salary=27 where st_name='naman';

select st_name,salary,salary*12 as 'Annual sal' from student;-- performed arithematic operations on column
select st_name,salary,salary%4 as 'Annual sal' from student;-- mod(%) means remainder

select st_name as 'student name' from student;

select st_name + '  has a salary of '+Str(salary) 
as 'description' from student;

truncate table student;-- data deleted
drop table student;-- deleted the table

-- class 3 

use AdventureWorks2017;
select TABLE_SCHEMA,TABLE_NAME 
from AdventureWorks2017.INFORMATION_SCHEMA.TABLES
order by TABLE_SCHEMA,TABLE_NAME;

select * from AdventureWorks2017.HumanResources.Employee;

select * from AdventureWorks2017.HumanResources.Employee
where SickLeaveHours !> 50;-- <> not operator

select * from AdventureWorks2017.HumanResources.Employee
where SickLeaveHours !> 50 and Gender='M';

select gender,SickLeaveHours from AdventureWorks2017.HumanResources.Employee
where SickLeaveHours < 50 or Gender='M';

select * 
from AdventureWorks2017.HumanResources.Employee
--where JobTitle like '%er';
--where JobTitle like 'E%';
--where JobTitle like '%Er%';
where JobTitle like 'Desig_ Engineer';

select * from AdventureWorks2017.HumanResources.Employee
where SickLeaveHours  between 50 and 60;

select * from AdventureWorks2017.HumanResources.Employee
where SickLeaveHours not between 50 and 60;

select * from AdventureWorks2017.HumanResources.JobCandidate
where BusinessEntityID is null;

use mydatabase;
create table Employees(emp_id int,emp_name char(30),salary decimal,
joining_date date,shift_time time,out_time datetime);

insert into Employees values
(101,'aman',20.5644,'10/13/2014','10:20','10:50:20'),
(101,'naman',200.5644,'5/10/2014','10:20','4-22-1999 10:50'),
(101,'raman',999.999999,'10/13/2014','10:20:56','4/22/1999 10:50:20'),
(101,'raman',999.999999,'10/13/2014','10:20:56','4/22/1999 10:50:20');

select * from Employees;
drop table Employees;

--decimal(5,3)   total word may be 5 including points 


declare @num as int =50,@num2 as int =80,@num3 as int;
set @num3=90;
select @num+@num2+@num3 as sum 
