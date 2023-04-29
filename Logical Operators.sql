SELECT 
    *
FROM
    books
WHERE
    released_year = 2017;
SELECT 
    *
FROM
    books
WHERE
    released_year != 2017;
    
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname = 'Gaiman';
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname != 'Gaiman';
    
  SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '% %'; 
    
    SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname NOT LIKE 'da%';
    
    SELECT 
    title
FROM
    books
WHERE
    title NOT LIKE '%e%';
    
   SELECT 
    *
FROM
    books
WHERE
    released_year > 2005
ORDER BY released_year;

SELECT 
    *
FROM
    books
WHERE
    pages > 500
ORDER BY pages;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year < 2000
ORDER BY released_year DESC;

SELECT 
    title, pages
FROM
    books
WHERE
    pages < 200
ORDER BY pages DESC;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2010
ORDER BY released_year;

SELECT 
   title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010;
        
SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        AND released_year > 2010
        AND title LIKE '%novel%';

SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 500;

SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010
ORDER BY released_year;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year BETWEEN 2004 AND 2015
ORDER BY released_year;

SELECT 
    title, pages
FROM
    books
WHERE
    pages BETWEEN 200 AND 300
ORDER BY pages;

SELECT 
    title, pages
FROM
    books
WHERE
    pages NOT BETWEEN 200 AND 500
ORDER BY pages;

SELECT 
    *
FROM
    people
WHERE
    birthdate < '2005-01-01';
SELECT 
    *
FROM
    people
WHERE
    YEAR(birthdate) < 2005;
    
SELECT 
    *
FROM
    people
WHERE
    HOUR(birthtime) > 12;
    
SELECT 
    *
FROM
    people
WHERE
    HOUR(birthtime) BETWEEN 12 AND 20;
    
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname IN ('Carver' , 'Lahiri', 'Smith');
    
SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname NOT IN ('Carver' , 'Lahiri', 'Smith');
    
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2000
        AND released_year NOT IN (2000 , 2002,
        2004,
        2006,
        2008,
        2010,
        2012,
        2014,
        2016)
ORDER BY released_year;

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year >= 2000
        AND released_year % 2 = 1
ORDER BY released_year;

SELECT title, author_lname FROM books
WHERE author_lname = 'Carver' 
OR author_lname = 'Lahiri'
OR author_lname = 'Smith';
 
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');
 
SELECT title, author_lname FROM books
WHERE author_lname NOT IN ('Carver', 'Lahiri', 'Smith');
 
 
SELECT 
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'modern lit'
        ELSE '20th century lit'
    END AS genre
FROM
    books
ORDER BY released_year;

SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 40 THEN '*'
        WHEN stock_quantity BETWEEN 41 AND 70 THEN '**'
        WHEN stock_quantity BETWEEN 71 AND 100 THEN '***'
        WHEN stock_quantity BETWEEN 101 AND 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books
ORDER BY stock_quantity;

SELECT 
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 40 THEN '*'
        WHEN stock_quantity <= 70 THEN '**'
        WHEN stock_quantity <= 100 THEN '***'
        WHEN stock_quantity <= 140 THEN '****'
        ELSE '*****'
    END AS stock
FROM
    books
ORDER BY stock_quantity;

SELECT 
    *
FROM
    books
WHERE
    released_year < 1980;
    
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR author_lname = 'Chabon';
        
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Lahiri'
        AND released_year > 2000;
        
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;
    
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE 'C%'
        OR author_lname LIKE 'S%';
        
SELECT 
    title, author_lname
FROM
    books
WHERE
    SUBSTR(author_lname, 1, 1) IN ('C' , 'S');
    
SELECT 
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN ('Just Kids' , 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
        ELSE 'Novel'
    END AS type
FROM
    books;
    
SELECT 
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS count
FROM
    books
GROUP BY author_fname , author_lname;