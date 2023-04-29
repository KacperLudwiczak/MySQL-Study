create database crud;
drop table cats;
create table cats (
cat_id int auto_increment,
name varchar(100),
breed varchar(100),
age int,
primary key(cat_id));
desc cats;

insert into cats(name, breed, age)
values ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
	   ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
select * from cats;
select name from cats;
select breed from cats;
select age from cats;
select name, age from cats;
select * from cats where age=4;
select name from cats where age=4;
select * from cats where name='Egg';

select cat_id from cats;
select name, breed from cats;
select name, age from cats where breed='Tabby';
select cat_id, age from cats where cat_id=age;

select cat_id as id, name from cats;
select name as kitty_name from cats;

update cats 
set age=14 
where name = 'Misty';
update cats 
set name = 'Ari'
where age = 11;
select * from cats;

update cats
set name = 'Jack'
where name = 'Jackson';
update cats
set breed = 'British Shortchair'
where name = 'Ringo';
update cats
set age = 12
where breed = 'Maine Coon';
select * from cats;

delete from cats where name = 'Egg';
select * from cats;

select * from cats where age=4;
delete from cats where age=4;
select * from cats;

select * from cats where cat_id=age;
delete from cats where cat_id=age;
select * from cats;

delete from cats;
select * from cats;