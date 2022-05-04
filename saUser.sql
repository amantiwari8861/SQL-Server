--this is sa user's account

select * from mydatabase.dbo.products;

create login designer with password='1234';
create user rohit for login designer;
use mydatabase;

grant select 
on mydatabase.dbo.products
to rohit;

grant select,insert,update,delete
on mydatabase.dbo.products
to rohit;
grant all  --deprecated
on mydatabase.dbo.products
to rohit;

revoke select,insert,update,delete
on mydatabase.dbo.products
to rohit;