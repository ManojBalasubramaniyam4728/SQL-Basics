use QADBT;
describe Employeeinfo;
insert into Employeeinfo values('tam',3,'texas',25,'male');
insert into Employeeinfo values('man',3,'texas',25,'male');
insert into Employeeinfo values('sam',3,'texas',25,'male');
insert into Employeeinfo values('tam',3,'texas',25,'male');
select * from Employeeinfo;

#If user want uniqueness in the searched result
select distinct name from Employeeinfo;

#get the employees name of texas;
select name from Employeeinfo where location='texas';

#get the employees name of taxas where the age should be more than 23
select name from Employeeinfo where location='texas' and age>23;

#get the employees name of taxas where the age should be more than 23 or location is from newyork
select name from Employeeinfo where (location='texas' And age>23) or location='newyork';

#get the  employees name where location equals to 'newjersey' or 'texas'
select name from Employeeinfo where location='newjersey' or location='texas';

#get the employees name whose age should be between 22 and 25
select name from employeeinfo where age in(22,23,24,25);

#get the employess name whose id lies between 1 amd 1000
select name from employeeinfo where id between 1 and 1000;

#get the employeenames less than 25 age
select name from employeeinfo where age<=25;

select name from employeeinfo where age in(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25);

select name from employeeinfo where age between 1 and 25;

#This is negation way(Negative way)
select name from employeeinfo where age not between 26 and 100;



