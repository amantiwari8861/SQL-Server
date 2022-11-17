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

/*
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


use AdventureWorks2017 ;

select * from INFORMATION_SCHEMA.TABLES;

select * from HumanResources.JobCandidate;

select * from Sales.vSalesPerson;

select * from Sales.vSalesPerson where CountryRegionName='united states';
select * from Sales.vSalesPerson where BusinessEntityID > 276;
select * from Sales.vSalesPerson where BusinessEntityID < 276;
select * from Sales.vSalesPerson where BusinessEntityID >= 276;
select * from Sales.vSalesPerson where BusinessEntityID <= 276;
select * from Sales.vSalesPerson where FirstName like 'R%';
select * from Sales.vSalesPerson where FirstName like '%l';
select * from Sales.vSalesPerson where FirstName like '%l%';
select * from Sales.vSalesPerson where FirstName in ('linda','Michael','Aman');


select * from Sales.vSalesPerson 
where BusinessEntityID >280 and BusinessEntityID<285;


select * from Sales.vSalesPerson 
where BusinessEntityID =285 or BusinessEntityID<280;

select * from Sales.vSalesPerson 
where not BusinessEntityID<280;


select * from Sales.vSalesPerson 
where BusinessEntityID <> 280;


select * from Sales.vSalesPerson 
order by FirstName;

select * from Sales.vSalesPerson 
order by FirstName asc;

select * from Sales.vSalesPerson 
order by FirstName desc;




create table emp1(id int ,name varchar(255));

insert into emp1 values(100,'aman'),(101,'sharad');

select * from emp1;

update emp1 set name='vishal' where id=100;

drop table emp1;
-- ------------------------------------------------

create table emp1(id int unique not null ,name varchar(255),mobile bigint unique not null);

insert into emp1 values(100,'aman',9891062743),(101,'sharad',8448179216);
insert into emp1(id,name) values(103,'aman 2'),(104,'sharad');
insert into emp1 values(105,'aman',9891062743),(106,'sharad',8448179216);

select * from emp1;

update emp1 set name='vishal' where id=100;

insert into emp1(name) values('rohit yadav');



create table emp1(id int primary key ,name varchar(255),mobile bigint unique not null);

insert into emp1 values(100,'aman',9891062743),(101,'sharad',8448179216);
insert into emp1(name,mobile) values('aman',9891062743);

exec sp_help emp1;

create table emp1(id int,name varchar(255),
mobile bigint unique not null
,primary key(id)
);

insert into emp1 values(100,'aman',9891062743),(101,'sharad',8448179216);
insert into emp1(name,mobile) values('aman',9891062743);

exec sp_help emp1;

drop table emp1;


create table emp1(id int,name varchar(255),
mobile bigint unique not null
,constraint id_primary primary key(id)
);

insert into emp1 values(100,'aman',9891062743),(101,'sharad',8448179216);
insert into emp1(name,mobile) values('aman',9891062743);

exec sp_help emp1;


create table emp1(name varchar(255),father_name varchar(255),
address varchar(255)
,constraint id_primary primary key(name,father_name)
);

insert into emp1 values
('Jones','thomas','star tower usa'),
('Jones','fernandez','new york usa'),
('jennie','thomas','san fransisco usa'),
('jennie','fernandez','texas usa');

insert into emp1 values ('Jones','fernandez','gvvjgvjhhj usa');

exec sp_help emp1;


create table emp1(id int identity(1000,1) ,name varchar(255) ,
father_name varchar(255),
address varchar(255),
constraint id_primary primary key(id)
);

insert into emp1(name,father_name,address) values
('Jones','thomas','star tower usa'),
('Jones','fernandez','new york usa'),
('jennie','thomas','san fransisco usa'),
('jennie','fernandez','texas usa');

insert into emp1 values ('Jones','fernandez','gvvjgvjhhj usa');

exec sp_help emp1;

select * from emp1;

insert into emp1 values (1004,'Jones','thomas','star tower usa');
insert into emp1(id,name,father_name,address) values (105,'Jones','thomas','star tower usa');



create table emp1(id int,name varchar(255),father_name varchar(255),
address varchar(255) default 'Delhi'
,constraint id_primary primary key(id)
);

insert into emp1 values (105,'Jones','thomas','star tower usa');
insert into emp1(id,name,father_name) values (106,'Jones','thomas');
select * from emp1;



create table emp1(id int,name varchar(255),father_name varchar(255),
city varchar(255) check (city in ('Delhi','Mumbai'))
,constraint id_primary primary key(id)
);

-- insert into emp1 values (105,'Jones','thomas','star tower usa');
insert into emp1 values (105,'Jones','thomas','delhi');
insert into emp1 values (106,'Jones','thomas','Mumbai');
insert into emp1(id,name,father_name) values (107,'Jones','thomas');
select * from emp1;

drop table emp1;
*/

/*
Use Test2;

create table Categories
(category_id int primary key,
category_name varchar(255),
description varchar(255));

create table Products(
Product_id int primary key,
category_id int,
product_name varchar(255),
description varchar(255),
-- foreign key(category_id) references Categories(category_id)
constraint categoryRule foreign key(category_id) references Categories(category_id) --better approach
);

exec sp_help Categories;
exec sp_help products;

insert into Categories values
(101,'phones','any description'),
(102,'laptop','any description'),
(305,'fashion','any description');

insert into Products values
(201,101,'realme xt','hello 1'),
(202,101,'redmi note 9','hello 2'),
(203,102,'hp','hello 3'),
(204,102,'dell vostro','hello 4'),
(205,305,'denim shirts','hello 5');

select * from Categories;
select * from Products;

insert into Products values
(206,107,'Realme GT','abcd');

drop table Categories; --error
drop table products;
drop table Categories;




Use Test2;

create table Categories
(category_id int primary key,
category_name varchar(255),
description varchar(255));

create table Products(
Product_id int primary key,
cat_id int,
product_name varchar(255),
description varchar(255),
constraint categoryRule foreign key(cat_id) references Categories(category_id) --better approach
);

exec sp_help Categories;
exec sp_help products;

insert into Categories values
(101,'phones','any description'),
(102,'laptop','any description'),
(305,'fashion','any description');

insert into Products values
(201,101,'realme xt','hello 1'),
(202,101,'redmi note 9','hello 2'),
(203,102,'hp','hello 3'),
(204,102,'dell vostro','hello 4'),
(205,305,'denim shirts','hello 5');

select * from Categories;
select * from Products;

insert into Products values
(206,107,'Realme GT','abcd');

drop table Categories; --error
drop table products;
drop table Categories;


-- variables
declare @a as int=69
--set @a=10
--set @a=15
select @a as 'A ki value'


declare @num as int = 56,@num2 as int =89,@sum as int
set @sum=@num+@num2

select @sum 

create table Demotable(deptid int,EmpName varchar(255),deptName varchar(255));

select * from AdventureWorks2017.HumanResources.Department;

insert into Demotable  select DepartmentID,Name,
GroupName from AdventureWorks2017.HumanResources.Department;

select * from Demotable;

select top 10 empname+' with id '+convert(varchar,deptid)+' works in '+deptname
as formatted_data from Demotable;


select empname+' with id '+convert(varchar,deptid)+' works in '+deptname
as formatted_data from Demotable
order by deptid -- it is mandatory gto use offset fetch
offset 10 rows fetch next 3 rows only;


create table Acc(salary float);
insert into Acc values
(10000),
(0000),
(5000),
(15000),
(18000),
(8000);

select salary as 'CTC',salary*70/100 as 'in hand',
salary+5000 as 'incentive',salary/12 as 'monthly salary'
from Acc;

select salary%27  from acc;
alter table acc alter column salary int;
*/

-- joins
Use Test2;

create table Categories
(category_id int primary key,
category_name varchar(255),
description varchar(255));

create table Products(
Product_id int primary key,
category_id int,
product_name varchar(255),
description varchar(255),
constraint categoryRule foreign key(category_id) references Categories(category_id)
);

insert into Categories values
(101,'phones','any description'),
(102,'laptop','any description'),
(103,'fashion','any description'),
(104,'food','any description'),
(105,'guns','any description');

insert into Products values
(201,101,'realme xt','hello 1'),
(202,101,'redmi note 9','hello 2'),
(203,102,'hp','hello 3'),
(204,102,'dell vostro','hello 4'),
(205,105,'AkM','hello 5'),
(206,null,'denim shirts','hello 6'),
(207,null,'Levies','hello 7');


select * from categories;
select * from products;

insert into Categories values (106,'fast food','burger');
--  inner join 

select * from Categories
inner join Products 
on Categories.category_id = Products.category_id;

select * from Categories as c
inner join Products as p
on c.category_id = p.category_id;


-- left join
select * from Categories as c
left join Products as p
on c.category_id = p.category_id;

select * from Categories as c
left join Products as p
on c.category_id = p.category_id
order by p.category_id ;

-- right join

select * from Categories as c
right join Products as p
on c.category_id = p.category_id
order by c.category_id ;

-- only right 
select * from Categories as c
right join Products as p
on c.category_id = p.category_id
where c.category_id is null;

-- only left 

select * from Categories as c
left join Products as p
on c.category_id = p.category_id
where p.category_id is null;

-- full join
select * from Categories as c
full outer join Products as p
on c.category_id = p.category_id;

select * from Categories as c
full join Products as p
on c.category_id = p.category_id;


select * from Categories as c
full join Products as p
on c.category_id = p.category_id
order by p.Product_id;

-- remove common from full join
select * from Categories as c
full join Products as p
on c.category_id = p.category_id
where c.category_id is null or p.category_id is null;


--grouping

select * from AdventureWorks2017.INFORMATION_SCHEMA.TABLES;

select * from AdventureWorks2017.HumanResources.Employee;

select * from AdventureWorks2017.HumanResources.Employee Emp;


select * from AdventureWorks2017.HumanResources.Employee Emp
order by JobTitle,Gender desc;

-- aggregate
select count(*) 'total rows' from AdventureWorks2017.HumanResources.Employee;
select sum(BusinessEntityID) sum from AdventureWorks2017.HumanResources.Employee;
select (sum(BusinessEntityID)/290) average from AdventureWorks2017.HumanResources.Employee;
select AVG(BusinessEntityID) average from AdventureWorks2017.HumanResources.Employee;
select min(BusinessEntityID) minimum from AdventureWorks2017.HumanResources.Employee;
select max(BusinessEntityID) maximum from AdventureWorks2017.HumanResources.Employee;



select JobTitle,count(*) 'number of employees'
from AdventureWorks2017.HumanResources.Employee Emp
group by JobTitle
order by JobTitle;

select JobTitle,count(*) 'number of employees',sum(sickLeaveHours)
from AdventureWorks2017.HumanResources.Employee Emp
group by JobTitle
order by JobTitle;


select birthdate,JobTitle,count(*) 'number of employees',sum(sickLeaveHours)
from AdventureWorks2017.HumanResources.Employee Emp
group by JobTitle
order by JobTitle; -- error 


select * from AdventureWorks2017.HumanResources.Employee Emp
order by JobTitle,BirthDate,gender;

select birthdate,JobTitle,count(*) 'number of employees',sum(sickLeaveHours)
from AdventureWorks2017.HumanResources.Employee Emp
group by JobTitle,BirthDate
order by JobTitle; 

-- clauses on group by
select birthdate,JobTitle,count(*) 'number of employees',sum(sickLeaveHours)
from AdventureWorks2017.HumanResources.Employee Emp
group by JobTitle,BirthDate
where gender='M'
order by JobTitle; --error


select birthdate,JobTitle,count(*) 'number of employees',sum(sickLeaveHours)
from AdventureWorks2017.HumanResources.Employee Emp
where gender='M'
group by JobTitle,BirthDate
order by JobTitle; --error

select birthdate,JobTitle,gender,count(*) 'total male'
from AdventureWorks2017.HumanResources.Employee Emp
where gender='M'
group by JobTitle,BirthDate,Gender
order by JobTitle;


-- filtering of data

select * from AdventureWorks2017.HumanResources.Employee Emp
order by JobTitle,BirthDate,gender;

select JobTitle,VacationHours,count(*)
from AdventureWorks2017.HumanResources.Employee
where VacationHours>54
group by JobTitle,VacationHours
order by JobTitle,VacationHours;


select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
group by JobTitle
order by JobTitle;

-- in which jobtitle the sum of vacation hours is > than 100

select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
 where sum(VacationHours)>100 -- error
group by JobTitle
order by JobTitle;


select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
group by JobTitle
 where sum(VacationHours)>100 -- error
order by JobTitle;

select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
group by JobTitle
having sum(VacationHours)>100
order by JobTitle;

/*
A HAVING clause is like a WHERE clause, but applies only to groups 
as a whole (that is, to the rows in the result set representing groups),
whereas the WHERE clause applies to individual rows.
*/


select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
group by JobTitle
having sum(VacationHours) between 55 and 150
order by JobTitle;


-- 
create table Group1(jobtitle varchar(255),total_vac_hr int);

insert into Group1 
select JobTitle,sum(VacationHours) 'total vacation hours'
from AdventureWorks2017.HumanResources.Employee
group by JobTitle
having sum(VacationHours) between 55 and 150
order by JobTitle;

select * from Group1;

-- subquery


select * from AdventureWorks2017.HumanResources.Employee Emp
order by JobTitle,BirthDate,gender;


select BusinessEntityID from AdventureWorks2017.HumanResources.Employee
where VacationHours>55;

select BusinessEntityID,JobTitle,Gender
from AdventureWorks2017.HumanResources.Employee
where BusinessEntityID in (
select BusinessEntityID 
from AdventureWorks2017.HumanResources.Employee
where VacationHours>55);








 













