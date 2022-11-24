/*
select * from sys.databases;
use master;
select * from INFORMATION_SCHEMA.TABLES;
select * from Group1;

create database StudentDb;

use Studentdb;

create table Student(roll_no int,
name varchar(255),phone bigint);

exec sp_help student;

select * from student;
insert into Student values(101,'aman $5',9891062743);

insert into student(roll_no,name) values(21,'prince');

select roll_no,name from Student;

update Student set name='dolly' where name='prince';

delete from Student where roll_no=101;

update Student set phone=1234 where phone is null;

--  crud -- create read update delete


create table dta(mon money);

insert into dta values(99999999);

select * from dta;


drop table Student;

create table Student(roll_no int,
name varchar(255),phone bigint,address text,dob date,marks decimal(4,2));

insert into Student values(21,'Aman',9891062743,'noida 62','2022-11-18',60.23);

--yyyy-mm-dd
/*
select * from student;

insert into Student values(21,'Aman',9891062743,'noida 62','2022/11/18',6.9299999);
*/

-- crud


use StudentDb;

select * from StudentDb.INFORMATION_SCHEMA.TABLES;

select * from AdventureWorks2017.HumanResources.Employee;
use AdventureWorks2017;

create table Employee(Id int,jobTitle varchar(255),DOB date,Gender char(1));

insert into Employee select BusinessEntityID,JobTitle,BirthDate,Gender
from AdventureWorks2017.HumanResources.Employee;


select * from Employee;


select 45+67 as 'Sum'  -- as for making alias
select 50-20 'sub' -- sub is alias
select 50*20 'multiply' -- sub is alias
select 50/20 'dolly' -- sub is alias
select 50%20 'aman' -- sub is alias


select 'dolly' +'  '+ 'sharma'



select * from StudentDb.dbo.Employee;

select 'the DOB of '+CONVERT(varchar,jobTitle)+
' is '+convert(varchar,dob) as 'formatted text'
from StudentDb.dbo.Employee;


declare @num1 int=55,@num2 int=30,@sum int
set @sum=@num1+@num2
select @sum as 'Sum'


select * from INFORMATION_SCHEMA.TABLES;

drop table Group1;

select * from Employees;
 truncate table employees;

 exec sp_help employees; --to see the table structure

 drop table employees;

 select * from employeedata;

 exec sp_rename employeedata ,Employees
 execute sp_rename Employees,StudentsData

 exec sp_renamedb Test2,Test3
 use master;

 -- altering 
alter table employee add Age int;
alter table employee alter column Age varchar(255);
alter table employee drop column Umar;
exec sp_rename 'employee.Age','umar';
exec sp_help employee;

select * from employee;

use Test3;

select * from demo.dbo.student;
drop database  demo;

*/
use AdventureWorks2017;
select * from INFORMATION_SCHEMA.TABLES;
select * from HumanResources.Employee;

select BusinessEntityID,BirthDate,JobTitle
,Gender,MaritalStatus,VacationHours,SickLeaveHours
from HumanResources.Employee;

create table Employee(id int,DOB date,
JobTitle varchar(255),Gender char,
MaritalStatus char(1),VacationHours float,
SickLeaveHours float);

insert into Employee 
select BusinessEntityID,BirthDate,JobTitle
,Gender,MaritalStatus,VacationHours,SickLeaveHours
from HumanResources.Employee;

-- filtering of data

select * from Employee;
use AdventureWorks2017;
select * from Employee where MaritalStatus='M';
select * from Employee where VacationHours<10;
select * from Employee where VacationHours>10;
select * from Employee where VacationHours>=10;
select * from Employee where VacationHours<=10;
select * from Employee where VacationHours=99;
select * from Employee where VacationHours between 80 and 100;
select * from Employee where JobTitle='chief executive officer';
select * from Employee where JobTitle like '%Engineer';
select * from Employee where JobTitle like 'Vice%';
select * from Employee where JobTitle like '%dev%';
select * from Employee where JobTitle not like '%dev%';
select * from Employee where MaritalStatus='M' and VacationHours>50;
select * from Employee where MaritalStatus='M' or VacationHours>50;
select * from Employee where not VacationHours <10;

select * from Employee where JobTitle in ('Sales Representative','European Sales Manager','Database Administrator');

select * from Employee order by JobTitle ;
select * from Employee order by JobTitle desc;

select * from Employee order by SickLeaveHours ;
select * from Employee order by MaritalStatus,VacationHours ;










