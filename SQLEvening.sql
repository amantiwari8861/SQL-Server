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








