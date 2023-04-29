create database data_types;

CREATE TABLE people (
    name VARCHAR(30),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

desc people;

insert into people (name, birthdate, birthtime, birthdt)
values ('Elton', '2000-12-25', '11:00:00', '2000-12-25 11:00:00'),
       ('Lulu', '1985-04-11', '9:45:10', '1985-04-11 9:45:10'),
	   ('Juan', '2020-08-15', '23:59:00', '2020-08-15 23:59:00');
       
SELECT 
    *
FROM
    people;
    
insert into people (name, birthdate, birthtime, birthdt)
values ('Hazel', curdate(), curtime(), current_timestamp());

SELECT 
    birthdate,
    DAY(birthdate),
    DAYOFWEEK(birthdate),
    DAYOFYEAR(birthdate)
FROM
    people;
    
    SELECT 
    name, birthtime, MINUTE(birthtime)
FROM
    people;
    
    SELECT 
    birthdate, DATE_FORMAT(birthdate, '%a %b %D')
FROM
    people;
    
    SELECT 
    birthdt, DATE_FORMAT(birthdt, '%H:%i')
FROM
    people;
    
    SELECT 
    DATEDIFF(CURDATE(), birthdate)
FROM
    people;
    
    SELECT DATE_ADD(CURDATE(), INTERVAL 1 YEAR);
     
     
SELECT birthdate, DATE_FORMAT(birthdate, '%a %b %D') FROM people;
 
SELECT birthdt, DATE_FORMAT(birthdt, '%H:%i') FROM people;
 
SELECT birthdate, date_add(birthdate, interval 18 year) from people;

SELECT TIMEDIFF(CURTIME(), '10:00:00');

SELECT NOW() - INTERVAL 18 YEAR;

SELECT 
    name,
    birthdate,
    YEAR(birthdate + INTERVAL 21 YEAR) AS 'will be 21'
FROM
    people;
    
    SELECT NOW();
    SELECT TIMESTAMP('2022-11-04 16:49:54');
    
CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
insert into captions (text) values ('just me and my girl chillin'),
('beautiful sunset');
SELECT 
    *
FROM
    captions;
insert into captions (text) values ('studying');
SELECT 
    *
FROM
    captions;
    
    CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
    insert into captions2 (text) values ('i love life');
SELECT 
    *
FROM
    captions2;
    UPDATE captions2 
SET 
    text = 'i love LIFE!!!';
    SELECT 
    *
FROM
    captions2;
    
CREATE TABLE inventory (
    item_name VARCHAR(30),
    price FLOAT,
    quantity INT
);
SELECT CURTIME();
SELECT CURDATE();
SELECT DAYOFWEEK(CURDATE());
SELECT DAYNAME(CURDATE());
SELECT DATE_FORMAT(NOW(), '%W');
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');
CREATE TABLE tweets (
    tweet_content VARCHAR(140),
    username VARCHAR(30),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ()
);
insert into tweets(tweet_content,username )
values ('fffffasfdzsf','kacpi');
SELECT 
    *
FROM
    tweets;