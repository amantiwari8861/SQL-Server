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