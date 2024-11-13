use business;

CREATE TABLE citizenloc	
(Name varchar(20),	
Location varchar(20));	

insert into citizenloc values('rahul','california');
insert into citizenloc values('george','california');
insert into citizenloc values('flex','texas');
insert into citizenloc values('steve','california');
insert into citizenloc values('husain','chicago');
insert into citizenloc values('subash','florida');

CREATE TABLE citizens	
(Name varchar(20),	
age int(50),
exp int(50));

insert into citizens values('rahul',34,6);
insert into citizens values('subash',34,6);
insert into citizens values('george',41,10);
insert into citizens values('flex',23,15);
insert into citizens values('steve',10,0);
insert into citizens values('husain',24,7); 

select * from citizenloc;
select * from citizens;

#What is the age of the people located in texas
select name,age from citizens where
name=(select name from citizenloc where Location='texas');

#What is the Experience of the people located in chicago
select name,exp from citizens where 
name=(select name from citizenloc where Location='chicago');

# "=" is used if sub query returning single element.
# "In" is used if sub query retuning multiple element.
#What is the age of the people located in california
select name,age from citizens where
name in(select name from citizenloc where Location='california');


