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


-- class 4
--key constraints (rules)
drop table Employees;
--not null
create table Employees(emp_id int,emp_name char(30),salary float);

insert into employees(emp_name,salary) values('aman',20000.788);
select * from Employees;
-- -----------------------------------
create table Employees(emp_id int not null,emp_name char(30),salary float);
insert into employees(emp_name,salary) values('aman',20000.788);--error
select * from Employees;

--unique
create table Employees(emp_id int unique,emp_name char(30),salary float);
insert into employees values(101,'aman',20000.788);
insert into employees values(101,'aman',20000.788);--error
select * from Employees;
--not null unique
drop table Employees;
create table Employees(emp_id int not null unique,emp_name char(30),salary float);
insert into employees(emp_name,salary) values('aman',20000.788);--error
insert into employees values(101,'aman',20000.788);
insert into employees values(101,'aman',20000.788);--error
select * from Employees;
-- primary key(not null & unique) (only one in table)
drop table Employees;
create table Employees(emp_id int primary key,emp_name char(30),salary float);
insert into employees(emp_name,salary) values('aman',20000.788);--error
insert into employees values(101,'aman',20000.788);
insert into employees values(101,'aman',20000.788);--error
select * from Employees;
create table Employees(emp_id int primary key,emp_name char(30) primary key,salary float);--error

-- composite primary key
create table Employees(emp_id int,emp_name char(30),salary float,primary key(emp_id,emp_name));
insert into employees values(101,'aman',20000.788);
insert into employees values(101,'aman2',20000.788);
select * from Employees;

--default
drop table Employees;
create table Employees(emp_id int default(100),emp_name char(30),salary float);
insert into employees(emp_name,salary) values('aman',20000.788);
insert into employees values(101,'aman',20000.788);
insert into employees values(101,'aman',20000.788);--error
select * from Employees;

--foreign key
--student teacher
use mydatabase;
create table categories (cat_id int primary key,cat_name varchar(50),description varchar(50));

create table products(ctgry_id int,pro_id int primary key,prod_name varchar(50),price float,
foreign key (ctgry_id) references categories(cat_id));

insert into categories values(101,'laptop','devices');
insert into products values(101,201,'dell vestro',75000);

insert into products values(102,202,'lenovo',75000);--error

delete from categories where cat_id=101;--error
update categories set cat_id=103 where cat_id=101;--error


drop table categories;--error
drop table products;
drop table categories;

create table products(ctgry_id int,pro_id int primary key,prod_name varchar(50),price float,
constraint mera_rule foreign key (ctgry_id) references categories(cat_id));


exec sp_help categories;

    --[ ON delete { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ] 
	--[ ON UPDATE { NO ACTION | CASCADE | SET NULL | SET DEFAULT } ] 

create table categories (cat_id int primary key,cat_name varchar(50),description varchar(50));

create table products(ctgry_id int,pro_id int primary key,prod_name varchar(50),price float,
constraint mera_rule foreign key (ctgry_id) references categories(cat_id)
on delete set null);

insert into categories values(101,'laptop','devices');
insert into products values(101,201,'dell vestro',75000);

delete from categories where cat_id=101;

select * from categories;
select * from products;
