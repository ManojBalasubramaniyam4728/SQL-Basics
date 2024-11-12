use world;
select * from city;

#get the country code start with A
select countrycode from city where countrycode like 'A%';

#get the country code secound letter is alter
select countrycode from city where countrycode like '_A%';

#sorting
use qadbt;
#get the name in aphabetiacl order
select * from employeeinfo order by name;
#get the id in accending order
select * from employeeinfo order by id;
#get the id in decending order
select * from employeeinfo order by id desc;

