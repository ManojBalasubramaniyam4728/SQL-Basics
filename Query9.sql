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


