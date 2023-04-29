SELECT 
    title, released_year, genre, rating, first_name, last_name
FROM
    series
        JOIN
    reviews ON reviews.series_id = series.id
        JOIN
    reviewers ON reviews.reviewer_id = reviewers.id;

CREATE VIEW full_reviews AS
    SELECT 
        title, released_year, genre, rating, first_name, last_name
    FROM
        series
            JOIN
        reviews ON reviews.series_id = series.id
            JOIN
        reviewers ON reviews.reviewer_id = reviewers.id;
        
show tables;
SELECT 
    *
FROM
    full_reviews;
    
SELECT 
    *
FROM
    full_reviews
WHERE
    genre = 'Animation';
    
SELECT 
    genre, AVG(rating)
FROM
    full_reviews
GROUP BY genre;

CREATE VIEW ordered_series AS
    SELECT 
        *
    FROM
        series
    ORDER BY released_year;
    
SELECT 
    *
FROM
    ordered_series;
    
insert into ordered_series (title, released_year, genre)
values ('The Great' , 2020 , 'Comedy');

SELECT 
    *
FROM
    ordered_series;
 SELECT 
    *
FROM
    series;
    
DELETE FROM ordered_series 
WHERE
    title = 'The Great';
    
CREATE OR REPLACE VIEW ordered_series AS
    SELECT 
        *
    FROM
        series
    ORDER BY released_year DESC;
SELECT 
    *
FROM
    ordered_series;
    
ALTER VIEW ordered_series AS
    SELECT 
        *
    FROM
        series
    ORDER BY released_year;
SELECT 
    *
FROM
    ordered_series;
    
drop view ordered_series;
SELECT 
    *
FROM
    ordered_series;
    
SELECT 
    title, AVG(rating), count(rating)
FROM
    full_reviews
GROUP BY title
HAVING COUNT(rating) > 2;
 
SELECT 
    title, AVG(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

SELECT 
    title, COUNT(rating)
FROM
    full_reviews
GROUP BY title WITH ROLLUP;

SELECT 
    released_year, genre, AVG(rating)
FROM
    full_reviews
GROUP BY released_year , genre WITH ROLLUP;