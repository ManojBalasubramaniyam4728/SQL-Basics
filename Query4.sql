create database business;
use business;

CREATE TABLE Transactions	
(Month varchar(50),	
Day int(50),	
Amount int(50),	
branch varchar(50));	

insert into Transactions values('feb',	13	,124	,'bangalore');
insert into Transactions values('feb',	17	,20400	,'chicago');
insert into Transactions values('feb',	212	,320	,'sydney');
insert into Transactions values('mar',	22	,9600	,'bangalore');
insert into Transactions values('mar',	16	,5200	,'chicago');
insert into Transactions values('april',12	,23     ,'sydney');
insert into Transactions values('Jan',	13	,666	,'bangalore');
insert into Transactions values('may',	2	,3111	,'sydney');
insert into Transactions values('may',	1	,99999	,'paris');
insert into Transactions values('Jan',	12	,2000	,'paris');

Select * from Transactions;

#Get Total Sum of amount  generated for each month useing grop by and Aggregate Functions
select month, sum(Amount)  from Transactions group by month;

#Get Maximum Transaction generated for each month useing grop by and Aggregate Functions
select month, max(amount) from Transactions group by month;

#Get Minimum Amount generated for each month useing grop by and Aggregate Functions
select month, min(amount) from Transactions group by month;

#Get Average Amount generated for each month useing grop by and Aggregate Functions
select month, avg(amount) from Transactions group by month;

#No of Transactions occurred for each month useing grop by and Aggregate Functions
select month, count(*) from Transactions group by month;

#Get the Transactions which occurred less than 2 for any month useing grop by and Aggregate Functions
#See condition can be applyied in two ways, "Where" and "Having";
#But if want to use "where" it is only for tables
#If want to use "Having" it is only after group by i.e. work only if group by exist.
select month, count(*) from Transactions group by month having count(*)>2;

#Get Total Sum of amount generated for each month only in Bangalore or Chicago branches
#where is used befour you group, having used after group
select month, sum(Amount)  from Transactions
 where branch='Bangalore' or branch='Chicago' 
 group by month;

#Get the month which has total sale amount lesss than 1000 when I combine both sydney and paris branches
select month, sum(Amount)  from Transactions
 where branch='sydney' or branch='paris' 
 group by month having sum(amount)<1000;






