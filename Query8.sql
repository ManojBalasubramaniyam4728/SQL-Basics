#This IS for SQL View
use business;

#View used to provide the access required for a particular thing.

#get only the date of googel company
create view googleTable as
select * from company where name='google';

select * from googletable;

#get Employees Of The Company More Than Avrage Sum Of All Compamny Employees
create view EmployeesOfTheCompanyMoreThanAvrageSumOfAllCompamnyEmployees as
select name,sum(Employees) from company group by name having sum(Employees) > (select avg(Employees)from company);

select * from EmployeesOfTheCompanyMoreThanAvrageSumOfAllCompamnyEmployees;

#SQL String Function

#1.concat
select concat(name,branch) as branch from company;

#2.SubString Starts with number
select substr(name,8) from company where name='QAClickAcademy'; # Academy

#3.SubString Strats and Ends with number
select substr(name,1,2) from company where name='QAClickAcademy'; #QA

#4.Replace
select replace(name, 'Aca','d') from company where name='QAClickAcademy'; #QAClickddemy

#5.Length
select length(name) from company where name='google'; #6

#6.Trim
Select trim('   The King  '); #The King

#limit is not as string function but it is used to limit the the data
#no matter how much data is there in the table it will limit it to it
select * from company limit 2;