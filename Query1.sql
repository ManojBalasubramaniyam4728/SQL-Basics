#Creating Database
create database QADBT;

#Point to Database
use QADBT;

#Create Tables
create table Employeeinfo(name varchar(20), id int, location varchar(20), age int);
describe Employeeinfo;
insert into Employeeinfo values('man',1,'newjersey',21);
insert into Employeeinfo values('sam',2,'newyork',23);
insert into Employeeinfo values('tam',3,'texas',25);

#To Select the the table data with column name
select name,id,location,age from Employeeinfo;
#To select only few column data from teble
select name,age from Employeeinfo;
#if user want to select every thing from table
select * from Employeeinfo;

#If user want to add one column to the table
alter table Employeeinfo add gender varchar(10);
#To view the shemas
describe Employeeinfo;
#If user want to modify or edit the column data type capcity
alter table Employeeinfo modify gender varchar(20);

#To Delete the column header
alter table EmployeeInfo drop gender;
describe Employeeinfo;

#Again adding because to add the data
alter table Employeeinfo add gender varchar(20);

#This is to enter the value in gender coloumn
update Employeeinfo set gender='male' where name='man';
update Employeeinfo set gender='male' where name='sam';
update Employeeinfo set gender='female' where name='tam';
select * from Employeeinfo;

#If user want to delete the entry row in the table of database
delete from Employeeinfo where name='tam';
select * from Employeeinfo;

#If user wnat to delete the entry database
create database Testing;
use Testing;
drop database Testing;


