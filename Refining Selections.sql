INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
           
SELECT 
    *
FROM
    books;
    
SELECT 
    author_lname
FROM
    books;           
SELECT DISTINCT
    author_lname
FROM
    books; 
SELECT DISTINCT
   released_year
FROM
    books; 
    
    SELECT DISTINCT
    CONCAT(author_fname, ' ', author_lname)
FROM
    books;
    SELECT DISTINCT
    author_fname, author_lname
FROM
    books;
    SELECT DISTINCT
    author_fname, author_lname, released_year
FROM
    books;
    
     SELECT 
    book_id, author_fname, author_lname
FROM
    books
ORDER BY author_lname;
SELECT 
    title, pages
FROM
    books
ORDER BY pages;

SELECT 
    book_id, author_fname, author_lname, pages
FROM
    books
ORDER BY 4;

SELECT 
    author_lname, released_year, title
FROM
    books
ORDER BY author_lname , released_year DESC;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS 'author'
FROM
    books
ORDER BY author;

SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY released_year
LIMIT 5;
SELECT 
    book_id, title, released_year
FROM
    books
ORDER BY released_year
LIMIT 2,4;

SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_fname LIKE '%av%';
    
SELECT 
    title
FROM
    books
WHERE
    title LIKE '%:%';
    
SELECT 
    author_fname 
FROM
    books
WHERE
    author_fname LIKE '____';
    
SELECT 
    author_fname 
FROM
    books
WHERE
    author_fname LIKE '_a_';
    
SELECT 
    author_fname  
FROM
    books
WHERE
    author_fname LIKE '__y%';
    
SELECT 
    author_fname  
FROM
    books
WHERE
    author_fname LIKE '%n';
    
SELECT 
   title
FROM
    books
WHERE
   title LIKE '%\%%';
   
   SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';
    
   SELECT 
    title, pages
FROM
    books
ORDER BY pages DESC
LIMIT 1;

   SELECT 
    CONCAT(title, ' - ', released_year) AS summary
FROM
    books
ORDER BY released_year DESC
LIMIT 3;

   SELECT 
    title, author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';
    
   SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity , released_year DESC
LIMIT 3;

   SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;

  SELECT 
    UPPER(CONCAT('MY FAVORITE AUTHOR IS ',
                    author_fname,
                    ' ',
                    author_lname))
FROM
    books
ORDER BY author_lname;