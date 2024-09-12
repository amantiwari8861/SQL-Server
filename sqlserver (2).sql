SELECT name, database_id, create_date  
FROM sys.databases;
use AdventureWorks2019;
select * 
from AdventureWorks2019.INFORMATION_SCHEMA.TABLES 
order by TABLE_SCHEMA,TABLE_NAME;
select * from HumanResources.Employee;
create database meraDatabase;
create table meritable(id int,name varchar(255));
EXEC sp_help meritable;
insert into meritable values(101,'Aman');
select * from meritable;
select * from AdventureWorks2019.HumanResources.Employee;