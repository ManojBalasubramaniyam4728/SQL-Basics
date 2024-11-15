use business;

create table collage(id int(50), name  varchar(20));

insert into collage values(53, 'tim');
insert into collage values(643, 'ben');
insert into collage values(223, 'tam');
insert into collage values(57545, 'sam');
insert into collage values(422, 'ram');
insert into collage values(983, 'joe');
insert into collage values(5399, 'ten');
insert into collage values(5399, 'ten');
insert into collage values(574, 'null');
insert into collage values(5399, 'ten');
insert into collage values(57545, 'sam');
insert into collage values(98003, 'joepp');


create table result(id int(50), name  varchar(20));

insert into result values(4393, 'tina');
insert into result values(53, 'tim');
insert into result values(24, 'harsh');
insert into result values(223, 'tam');
insert into result values(57545, 'sam');
insert into result values(887, 'jack');
insert into result values(5444, 'ten');
insert into result values(98003, 'joepp');

select * from collage;
select * from result;

#This "Union" will give the Non duplicate value in the table
select * from collage union (select * from result);

#This "Union all" will give the duplicate value in the table
select * from collage union all (select * from result);

#The Intersect mean if user want to get only the data which are present in both the table is know as Intersect.
#The "Intersect" key word is not in the sql it is in orcal sql so you want to do by subquery.
select * from collage where id in (select id from result);

#Creating new table for case
create table Marks(score int(50), name varchar(20));

insert into marks values(45, 'tina');
insert into marks values(98, 'sam');
insert into marks values(65, 'tam');
insert into marks values(64, 'harsh');
insert into marks values(23, 'tim');
insert into marks values(34, 'jack');

#Case is like if and else if it is true execute that eles it will execuite the condition in else 
#Note:- If elese is not given if if block failes then null will be taken.
#When will act like a if block

select score, case name
when 'tim' then score*2
when 'sam' then score-25
else score end 
'NewScore',name from marks;



