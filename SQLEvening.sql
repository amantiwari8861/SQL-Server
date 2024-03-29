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

-- constraints (rules)

--unique & not null
create table AadharCard(uid int unique not null,name varchar(255)
unique not null,address varchar(100));

insert into AadharCard values(101,'dolly','noida');
insert into AadharCard values(103,'dolly3','noida');
insert into AadharCard(name,address) values('dolly2','noida');

select * from AadharCard;

drop table AadharCard;

-- default
create table AadharCard(uid int unique not null,
name varchar(255) unique not null default 'No Name',
address varchar(100));

insert into AadharCard values(101,'dolly','noida');
insert into AadharCard(uid,address) values(102,'noida');
insert into AadharCard values(103,null,'noida');

select * from AadharCard;

--primary key
create table AadharCard(uid int primary key,name varchar(255)
unique not null,address varchar(100));

insert into AadharCard values(101,'dolly','noida');
insert into AadharCard(name,address) values('dolly','noida');

create table class6(name varchar(255),fname varchar(255),city varchar(255),
primary key(name,fname));

insert into class6 values('aman','xyz','delhi');
insert into class6 values('aman','abc','delhi');
insert into class6 values('dolly','xyz','delhi');
insert into class6 values('dolly','abc','delhi');

select * from class6;

insert into class6 values('dolly','abc','delhi');
*/
use testDb;
create table Courses(courseId int primary key identity(1000,2)
,cname varchar(255) not null,
price int,duration float,description varchar(255));

insert into courses(cname,price,duration,description)
values 
('C Programming 2022',3500,25,'basics of c'),
('c++ Programming 2022',5500,55,'basics of c++'),
('java Programming 2022',8500,65,'basics of java'),
('python Programming 2022',3500,25,'basics of '),
('.Net Programming 2022',7500,25,'basics of '),
('Ruby Programming 2022',8500,25,'basics of '),
('Scala Programming 2022',9500,25,'basics of ');

select * from Courses;

create table Learners(
id int primary key identity(200,2),name varchar(255),
course_enrolled int,email varchar(255),
start_date datetime2 default current_timestamp,
foreign key(course_enrolled) references courses(courseid)
);

insert into Learners(name,course_enrolled,email) values
('aman',1004,'aman@gmail.com'),
('dolly',1002,'dolly@gmm.com'),
('dolly',1006,'dolly@gmm.com'),
('dolly',1008,'dolly@gmm.com'),
('prince',1002,'prince@gmm.com');


select * from Learners;

drop table Learners;

insert into testDb.dbo.Learners(name,email) values('xyz','xyz@gmail.com');
insert into testDb.dbo.Learners(name,email) values('fresher1','xyz@gmail.com');
insert into testDb.dbo.Learners(name,email) values('fresher2','xyz@gmail.com');


-- joins
--inner join
select * from Courses
inner join Learners 
on Courses.courseId=Learners.course_enrolled;

--using alias
select * from Courses as c
inner join Learners  as l
on c.courseId=l.course_enrolled;


--left join
select * from Courses c
left join Learners l
on c.courseId=l.course_enrolled
order by l.course_enrolled;


--right join
select * from Courses c
right join Learners l
on c.courseId=l.course_enrolled
order by c.courseId;

--only right
select * from Courses c
right join Learners l
on c.courseId=l.course_enrolled
where c.courseId is null
order by c.courseId;

--only left
select * from Courses c
left join Learners l
on c.courseId=l.course_enrolled
where l.course_enrolled is null
order by c.courseId;

--full outer
select * from Courses c
full outer join Learners l
on c.courseId=l.course_enrolled
order by l.Id;

--full outer (removed common part)
select * from Courses c
full outer join Learners l
on c.courseId=l.course_enrolled
where c.courseId is null or l.course_enrolled is null

--cross join
select * from Courses,learners;











