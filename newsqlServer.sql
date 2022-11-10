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























