#inner joins, left(outer) joins, Right(outer) joins and full joins

#Note:- no need to mention outer key word because new version of sql will handel it.

use business;

create table student
(Name varchar(20),
id int(50),
age int(50),
gender varchar(20),
Location varchar(20));

insert into student values('sai', 1, 12, 'female','spain');
insert into student values('baba', 2, 15, 'male','newyork');
insert into student values('ram', 3, 15, 'male','spain');
insert into student values('raghu', 4, 15, 'female','newyork');
insert into student values('ajay', 5, 12, 'male','nijieria');
insert into student values('matrhtu', 6, 12, 'female','spain');

create table Grades(Grades varchar(20), id int(50));

insert into grades values('A',2);
insert into grades values('B',3);
insert into grades values('A',4);
insert into grades values('C',5);
insert into grades values('B',7);

select * from student;
select * from grades;

#Get the student details with result who passed in the exams
#This is inner join(join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s join grades as g on s.id=g.id;

#Get the student details with result who appeared in the exams
#This is left join(left outer join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s left join grades as g on s.id=g.id;

#Get sll the student details with result who passed in the exams
#This is right join(right outer join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s right join grades as g on s.id=g.id;

#Assignment querys
#1.Get the female student details with result passed in exams. (Hint inner join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s join grades as g on s.id=g.id where s.gender='female';

#2.Get the male student details with result who appered in exams. (Hint left join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s left join grades as g on s.id=g.id where s.gender='male';

#3.Get all the student details whose age is greater than 12 with result. (Hint right join)
select s.name,s.id,s.age,s.gender,s.location,g.grades
from student as s right join grades as g on s.id=g.id where s.age>12;

