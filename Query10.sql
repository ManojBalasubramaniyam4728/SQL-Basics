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






