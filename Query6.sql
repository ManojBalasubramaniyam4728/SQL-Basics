#Joins
#Joins are used to merge two tables as one

use business;

#Megring citizens and citizenloc table.
# "as" indicate refreing world
# "Join" as for joining the tables
# "on and =" is used to refer the uniqueness of the table
select c.name, cl.location,c.age,c.exp 
from citizens as c join citizenloc as cl
on cl.name=c.name;

use business;

create table company
(Name varchar(20), Branch varchar(20), Employees int (50));

insert into company values('QAClickAcademy','US',20);
insert into company values('Google','US',500);
insert into company values('Yahoo','Canada',250);
insert into company values('Google','India',400);
insert into company values('QAClickAcademy','India',75);
insert into company values('QAClickAcademy','UK',10);
insert into company values('QAClickAcademy','Canada',30);
insert into company values('Yahoo','US',200);
insert into company values('Yahoo','India',150);
insert into company values('Facebook','US',50);

create table Established
(Name varchar(20),Year int(50));

insert into Established values('QAClickAcademy',2010);
insert into Established values('Google',1990);
insert into Established values('Yahoo',1992);
insert into Established values('Facebook',1992);

select * from company;
select * from Established;

#Get total employees count of company which is established in a year 1990
SELECT c.name, SUM(c.employees) as totalEmp, e.year
FROM company AS c
JOIN Established AS e
ON c.name = e.name
GROUP BY c.name, e.year
HAVING e.year = 1990;

#get min employees present in all companies established after 1990
select c.name, min(c.employees) as MinimumEmp, e.year
from company as c join established as e on c.Name=e.name
group by c.name, e.Year having e.Year>1990;



