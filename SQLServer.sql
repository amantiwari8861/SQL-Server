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
use mydatabase;

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
use mydatabase;

--class 5
create table students(roll_no int primary key,name varchar(50),
class varchar(50),address varchar(50),city varchar(50));

use mydatabase;
select * from AdventureWorks2017.HumanResources.Employee;

insert into students 
select top 100 BusinessEntityID,jobTitle,vacationHours,loginId,MaritalStatus
from AdventureWorks2017.HumanResources.Employee;

select * from students;

drop table students;

--Alter 
alter table students add phone varchar(20);--added column
alter table students --modify column
alter column name varchar(255); 

exec sp_help studentz;
alter table students--dropping column
drop column name;

exec sp_rename 'students', 'studentz'; --renaming table

select * from studentz;

exec sp_rename 'Studentz.roll_no','Student_id','column'; --renaming column

alter table studentz 
alter column address varchar(50) not null;
alter column address varchar(50) primary key;
insert into studentz(student_id) values(null);


alter table products nocheck constraint mera_rule  ;--to disable foreignkey
select * from categories;
select * from products;

alter table products check constraint mera_rule;--to enable foreignkey
  
--class 6
select * from AdventureWorks2017.HumanResources.Employee order by JobTitle asc;--sorting alphabetically
select * from AdventureWorks2017.HumanResources.Employee order by JobTitle desc;



create table checkorder (id int,name varchar(50),groupname varchar(50));

select * from AdventureWorks2017.HumanResources.Department order by Name , GroupName asc;
--just picked some data from here then added some extra data 

insert into checkorder(name,groupname) 
select name,groupname from AdventureWorks2017.HumanResources.Department;


select * from checkorder;

insert into checkorder(name,groupname) values
('Engineering','Assistant'),
('Engineering','Bssistant'),
('Engineering','Ssistant'),
('Engineering','Ossistant');

select * from checkorder order by name,groupname;

insert into checkorder(name,groupname) values
('Finance','Assistant'),
('Finance','Bssistant'),
('Finance','Ssistant'),
('Finance','Ossistant');

--joins

use mydatabase;
create table categories (category_id int primary key,category_name varchar(50),description varchar(50));

create table products(category_id int,product_id int primary key,product_name varchar(50),price float,
foreign key (category_id) references categories(category_id));

insert into categories values
(101,'phones','	any description'),
(102,'laptop','	any description'),
(103,'fashion','any description'),
(104,'food','	any description'),
(105,'guns','	any description');

insert into products values
(101,201,'realme xt',5600.89),
(101,202,'redmi note 9',5006.89),
(102,203,'hp',5876.89),
(102,204,'dell vestro',59886.89),
(105,205,'M416',54446.89),
(null,206,'shirt1',5226.89),
(null,207,'jeans',5787876.89);

--inner join
select * from categories
inner join products
on categories.category_id = products.category_id;

--shortcut
select * from categories as c
inner join products as p
on c.category_id = p.category_id;

--left join or left outer join
select * from categories as c
left join products as p
on c.category_id = p.category_id;


--right join or right outer join
select * from categories as c
right join products as p
on c.category_id = p.category_id;

--full outer join
select * from categories as c
full join products as p
on c.category_id = p.category_id;

--only left(A)
select * from categories as c
left join products as p
on c.category_id = p.category_id
where p.category_id is null;

--only right
select * from categories as c
right join products as p
on c.category_id = p.category_id
where c.category_id is null;

--remove duplicate from both
select * from categories as c
full join products as p
on c.category_id = p.category_id
where c.category_id is null or
p.category_id is null;



drop table products;
drop table categories;


--class 7

select * from AdventureWorks2017.Person.Address order by city;

select city,count(*) as 'Total Employee'  
from AdventureWorks2017.Person.Address
group by City order by City;

select city,count(*) as 'Total employee',sum(AddressID) as 'Total salary' ,AVG(addressId) 'average salary'
from AdventureWorks2017.Person.Address
group by city order by City;

select MAX(addressID) 'maximum salary',MIN(addressid) 'minimum salary',city
from AdventureWorks2017.Person.Address
group by city order by City;

select *  
from AdventureWorks2017.Person.Address
group by city 
--where addressid>500 wrong
order by City;

use BikeStore;
select * from BikeStore.INFORMATION_SCHEMA.TABLES;
select * from BikeStore.sales.customers;

select * from BikeStore.production.products order by category_id;

--class 8

select * from BikeStore.production.products

select category_id,count(*) 'products in category ',
sum(list_price) 'category total price'
from BikeStore.production.products
group by(category_id)
order by category_id;


select category_id,count(*) 'products in category ',
sum(list_price) 'category total price'
from BikeStore.production.products
--where sum(list_price)>20000
group by(category_id)
having sum(list_price) > 20000
order by category_id;


select category_id,model_year,count(*) 'total production'
from BikeStore.production.products
group by category_id,model_year
having category_id=1
order by category_id;

--subquery

select * from BikeStore.production.products

--give me those bikes details whose price is greater than
--Electra Moto 1-2016 bike's price

--1st way
select list_price from BikeStore.production.products
where product_name='Electra Moto 1 - 2016';--529.99

select * from BikeStore.production.products
where list_price>529.99
order by list_price;

--2nd way (by sub query)
select * from BikeStore.production.products
where list_price>(select list_price from BikeStore.production.products
where product_name='Electra Moto 1 - 2016')
order by list_price;

--views
use mydatabase;

create view EmployeeData as
select JobTitle,BirthDate,HireDate,Gender
from AdventureWorks2017.HumanResources.Employee;

select * from EmployeeData order by HireDate;


--stored procedure
use mydatabase;
create procedure getEmpData 
as 
begin
select * from EmployeeData order by HireDate;
end;

exec getEmpData;
--stored procedure by variable

create procedure getDataByJobTitle
@xyz varchar(50)
as
begin
select * from EmployeeData 
where JobTitle=@xyz
end;

exec getDataByJobTitle 'Design Engineer';
exec getDataByJobTitle 'Tool designer';
exec getDataByJobTitle 'network administrator';

create procedure getDataByJobTitleAndgender
@xyz varchar(50),@gen char
as
begin
select * from EmployeeData 
where JobTitle=@xyz and Gender=@gen
end;

exec getDataByJobTitleAndgender 'accountant','f';

select * from EmployeeData  order by JobTitle;

drop procedure getDataByJobTitle;
drop procedure getDataByJobTitleAndgender;
drop procedure getEmpData;
select * from sys.procedures;

use mydatabase;
ALTER procedure getEmpData 
as 
begin
select * from mydatabase.dbo.studentz ;
end;

exec getEmpData;

--dcl (data control language)
create login developer with password='1234';
create user aman for login developer;

grant select on mydatabase.studentz to aman ;
revoke select,insert,update,delete on mydatabase.studentz from aman;
alter user sa with password='1234';
ALTER LOGIN developer DISABLE;
ALTER LOGIN developer ENABLE;
drop LOGIN developer;
revoke connect from aman;
drop user if exists aman;
alter user aman with login=designer;
alter role db_datareader add member aman;
grant select on database::bikestores to aman;

create role frontend;
alter role frontend with name=angular;
create login dev with password='xyz'
create user rohit for login dev;
alter role angular add member rohit;
alter role angular drop member rohit;
drop role if exists angular;
grant select on schema::Sales to frontend;
alter role frontend add member aman;
alter role frontend drop member aman;

--tcl
--commit rollback savepoint
use mydatabase;
select * from studentz;

begin transaction
insert into studentz values(102,56,'noida','delhi',9891)
insert into studentz values(103,78,'noida','delhi',9891)
commit transaction

begin transaction
insert into studentz values(104,56,'noida','delhi',9891)
insert into studentz values(104,78,'noida','delhi',9891)
if(@@ERROR >=1)
rollback transaction
else
commit transaction

begin transaction
insert into studentz values(104,56,'noida','delhi',9891)
insert into studentz values(105,78,'noida','delhi',9891)
if(@@ERROR >=1)
rollback transaction
else
commit transaction


-- creating savepoints
begin transaction
insert into studentz values(104,56,'noida','delhi',9891)
insert into studentz values(105,78,'noida','delhi',9891)
insert into studentz values(106,78,'noida','delhi',9891)
save transaction firstsavepoint
insert into studentz values(107,78,'noida','delhi',9891)
insert into studentz values(107,78,'noida','delhi',9891)
if(@@ERROR >=1)
rollback transaction firstsavepoint
else
commit transaction

use mydatabase;
select * from studentz;
truncate table studentz;

begin transaction
drop table studentz;
commit transaction

    Create table Test_tran  
    (  
                    ID Int Primary key,  
                    Name varchar(10)  
    );
BEGIN TRAN  
INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Amit')  
INSERT INTO Test_Tran ( ID, Name) VALUES (2,'Kapil')  
INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Aditya')  
COMMIT TRAN 

We can see that even when the transaction failed, records got inserted; which is not the correct way. To avoid such a situation, we need to make the transaction atomic which means that either all the statements in the transaction execute successfully or none of them if any of the statements failed.

Here now, I am defining two methods to achieve the atomicity of transaction.

    Using Try/CATCH block
    Using XACT_ABORT


BEGIN TRY  
       BEGIN TRAN  
       INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Amit')  
       INSERT INTO Test_Tran ( ID, Name) VALUES (2,'Kapil')  
       INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Aditya')  
       COMMIT TRAN  
END TRY  
BEGIN CATCH  
       ROLLBACK TRAN  
END CATCH

We can also achieve the atomicity by setting XACT_ABORT to ON. By setting XACT_ABORT to ON and we can rollback all the statements inside a transaction when an error occurred.

    SET XACT_ABORT ON  
    BEGIN TRAN  
           INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Amit')  
           INSERT INTO Test_Tran ( ID, Name) VALUES (2,'Kapil')  
           INSERT INTO Test_Tran ( ID, Name) VALUES (1,'Aditya')  
    COMMIT TRAN 


CREATE PROCEDURE uspProductList
AS
BEGIN
    SELECT 
        product_name, 
        list_price
    FROM 
        production.products
    ORDER BY 
        product_name;
END;

EXECUTE sp_name;

Or

EXEC sp_name;

 ALTER PROCEDURE uspProductList
    AS
    BEGIN
        SELECT 
            product_name, 
            list_price
        FROM 
            production.products
        ORDER BY 
            list_price 
    END;

DROP PROCEDURE sp_name;
DROP PROC sp_name;

ALTER PROCEDURE uspFindProducts(@min_list_price AS DECIMAL)
AS
BEGIN
    SELECT
        product_name,
        list_price
    FROM 
        production.products
    WHERE
        list_price >= @min_list_price
    ORDER BY
        list_price;
END;

EXEC uspFindProducts 100;

ALTER PROCEDURE uspFindProducts(
    @min_list_price AS DECIMAL
    ,@max_list_price AS DECIMAL
)
AS
BEGIN
    SELECT
        product_name,
        list_price
    FROM 
        production.products
    WHERE
        list_price >= @min_list_price AND
        list_price <= @max_list_price
    ORDER BY
        list_price;
END;

EXECUTE uspFindProducts 900, 1000;

EXECUTE uspFindProducts 
    @min_list_price = 900, 
    @max_list_price = 1000;






