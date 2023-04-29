insert into cats (cat, age)
values ('Piotrek', 5);

insert into cats (age, cat)
values (8, 'Jan');

insert into dogs (dog, age)
values ('Paweł', 10),
       ('Eryk', 2),
       ('Kamil', 6);
       
select * from cats;
select * from dogs;

create database people_table;
create table people (
first_name varchar(20),
last_name varchar(20),
age int);
insert into people (first_name, last_name, age)
values ('Tina', 'Belcher', 13),
       ('Linda', 'Belcher', 45),
       ('Phillip', 'Frond', 38),
       ('Calvin','Fischoeder',70);
select * from people;

create table cats2 (
name varchar(50) not null,
age int not null);
insert into cats2 (name, age) 
values ('Bilbo\'s', 19);
select * from cats2;

desc cats;
desc cats2;

create table cats3 (
name varchar(50) default 'mystery',
age int default 99);
insert into cats3 () 
values ( );
select * from cats3;

create table unique_cats (
cat_id int  not null primary key,
name varchar(50),
age int);
insert into unique_cats(cat_id, name, age)
values (1, 'bingo', 2);
select * from unique_cats;
desc unique_cats;

create table unique_cats2 (
cat_id int  auto_increment ,
name varchar(50),
age int,
primary key(cat_id));
insert into unique_cats2( name, age)
values ('bingo', 2),
('alex', 12),
('tom', 4);
select * from unique_cats2;
desc unique_cats2;

create database employees_table;
create table employees(
id int auto_increment primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
middle_name varchar(50),
age int not null,
current_status varchar(50) not null default 'employed'); 
desc employees;
insert into employees (first_name,last_name,age)
values ('Jan', 'Kowalski', 30);
select * from employees;
