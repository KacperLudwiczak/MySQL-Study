create table tweets ( 
username varchar(15), 
tweet varchar(140), 
favorites int);

create table dogs ( 
dog varchar(15),  
age int);

create table cats ( 
cat varchar(15),  
age int);
show tables;

show columns from tweets;
desc dogs;
describe tweets;

drop table dogs;

create table pastries (
name varchar(50),
quantity int);
desc pastries;
drop table pastries;