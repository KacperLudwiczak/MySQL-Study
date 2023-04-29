create database constraints;
CREATE TABLE contacts (
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
insert  into contacts (name, phone)
values ('billybob', '878 121 3455');
SELECT 
    *
FROM
    contacts;
insert  into contacts (name, phone)
values ('billybob', '978 121 3455');
SELECT 
    *
FROM
    contacts;
    
CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 18)
);
insert into users (username, age)
values ('cat', 19);
SELECT 
    *
FROM
    users;

CREATE TABLE palindromes (
    word VARCHAR(100) CHECK (REVERSE(word) = word)
);
insert into palindromes (word)
values ('ALA');
select * from palindromes;

CREATE TABLE users2 (
    username VARCHAR(20) NOT NULL,
    age INT
    constraint age_not_negative check (age >=18)
);
insert into users2 (username, age)
values ('dogt', 18);
SELECT 
    *
FROM
    users2;

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);
insert into companies (name, address)
values ('blackbird auto', '123 spruse'),
       ('luigis pies', '123 spruse');
SELECT 
    *
FROM
    companies;
    
CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

alter table companies
add column phone varchar(15);
SELECT 
    *
FROM
    companies;
alter table companies
add column employee_count int not null;
SELECT 
    *
FROM
    companies;
    
alter table companies
drop column phone;
SELECT 
    *
FROM
    companies;
    alter table companies
drop column employee_count;
SELECT 
    *
FROM
    companies;
    
rename table companies to suppliers;
SELECT 
    *
FROM
    suppliers;
alter table suppliers rename to companies;
SELECT 
    *
FROM
    companies;
    
alter table companies
rename column name to company_name;
SELECT 
    *
FROM
    companies;
 
desc companies;
alter table companies
modify company_name varchar(100) default 'unknow';
desc companies;