SELECT 
    COUNT(*) AS number_of_books
FROM
    books;
    SELECT 
    COUNT(author_fname)
FROM
    books;
    SELECT 
    COUNT(distinct author_fname)
FROM
    books;
       SELECT 
    COUNT(distinct released_year)
FROM
    books;
       SELECT 
    COUNT(distinct author_lname)
FROM
    books;
    
    SELECT 
    title
FROM
    books
WHERE
    title LIKE '%the%'; 
     SELECT 
    COUNT(*)
FROM
    books
WHERE
    title LIKE '%the%'; 
    
    SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written;

SELECT 
    released_year, COUNT(*)
FROM
    books
GROUP BY released_year;

SELECT 
    MAX(pages)
FROM
    books;
SELECT 
    MIN(pages)
FROM
    books;
    SELECT 
    MIN(author_lname), MAX(author_lname)
FROM
    books;
    
    SELECT 
    title, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year = (SELECT 
            MIN(released_year)
        FROM
            books);

SELECT 
    author_fname, author_lname, COUNT(*)
FROM
    books
GROUP BY author_fname , author_lname;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, COUNT(*)
FROM
    books
GROUP BY author
ORDER BY COUNT(*) DESC; 

SELECT 
    author_lname,
    author_fname,
    COUNT(*) AS books_written,
    MIN(released_year) AS oldest_released,
    MAX(released_year) AS earliest_released,
    MAX(pages) AS longest_page_count,
    MIN(pages) AS smallest_page_count
FROM
    books
GROUP BY author_lname , author_fname
ORDER BY author_lname;

SELECT 
    author_lname, COUNT(*) AS books_written, SUM(pages)
FROM
    books
GROUP BY author_lname
ORDER BY SUM(pages) DESC;

SELECT 
    AVG(pages)
FROM
    books;
    
SELECT 
    released_year, AVG(stock_quantity), count(*) as books_released
FROM
    books
GROUP BY released_year;

SELECT 
    COUNT(*)
FROM
    books;
    
SELECT 
    released_year, COUNT(released_year)
FROM
    books
GROUP BY released_year
ORDER BY released_year;

SELECT 
    SUM(stock_quantity)
FROM
    books;
    
SELECT 
    author_fname, author_lname, AVG(released_year)
FROM
    books
GROUP BY author_fname , author_lname
ORDER BY author_fname , author_lname;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages)
FROM
    books
GROUP BY author
ORDER BY MAX(pages) DESC
LIMIT 1;

SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author, pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
            
SELECT 
    released_year AS 'year',
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM
    books
GROUP BY released_year
ORDER BY released_year;