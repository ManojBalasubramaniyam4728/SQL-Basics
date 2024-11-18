#SQl Constraints

use Business;

#"NOT NULL" Constraints
#Null will be not allowed
create table Constab(name varchar(20), id int(50) not null);
insert into constab values('aaaa');  #error will through
insert into constab (name) values('aabb');  #error will through
select * from constab;


#"Defult" Contraints
#Default will be taken if userd is not entered anything while inserting.
create table Constab1(name varchar(20), marks int(50) default 35);
insert into Constab1 values('aaaa');  #error
insert into Constab1 (name) values('aabb');  #35 will entered for aabb
select * from constab1;

#"Unique" Contraints
#Unique will not allow the same value again and again.alter
create table Constab2(name varchar(20), id int(50) unique );
insert into constab2(name,id) values('gggggg',1);
insert into constab2(name,id) values('gggghhhj',1); #error
select * from constab2;

#"Check" Contraints
#check is not used or supported in mysqul
#Check will act as check point
create table constab3(name varchar(20), id int(20) check(int)>10);
insert into constab3(name,id) values('gggggg',1);#error

#"Primary Key"
# The Key which is unique and not null is know as primary key 
#In A table there can be only one primary key but two or more primary column.
Create table persons(id int (50), name varchar(20), primary key(id));

#"Foregin key"
#The Key which refers to primary key in other table.
create table customersDetails(CustomerID int(50), 
address varchar(20), zipcode varchar(50),
 primary key(CustomerID));
 
create table orderDetails(OrderID int(50),
 CustomerID int(20), Amount int(50),date varchar(50),
 primary key(OrderID), foreign key(CustomerID)
 references customersdetails(customerId));
 
insert into customersdetails values(123 ,'ccccc','dfghj123');
insert into orderDetails values(123 ,123,4500, 'july');
insert into orderDetails values(123 ,1235,4500, 'july'); #error

select * from customersdetails;
select * from orderDetails;

delete from customersdetails where CustomerID=123; #error

#On delete cascade
create table customersDetails2(CustomerID int(50), 
address varchar(20), zipcode varchar(50),
 primary key(CustomerID));
 
create table orderDetails2(OrderID int(50),
 CustomerID int(20), Amount int(50),date varchar(50),
 primary key(OrderID), foreign key(CustomerID)
 references customersdetails2(customerId) on delete cascade);
 
insert into customersdetails2 values(123 ,'ccccc','dfghj123');
insert into orderDetails2 values(123 ,123,4500, 'july');

delete from customersdetails2 where customerId="123";

select * from customersdetails2; # null result
select * from orderDetails2; # null result



 






