
CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);
INSERT INTO users (email) VALUES('Katie34@yahoo.com'), ('Tunde@gmail.com');
SELECT 
    *
FROM
    users;
DELETE FROM users; 
SELECT 
    count(*)
FROM
    users;
    
SELECT 
    created_at AS total
FROM
    users
ORDER BY created_at
LIMIT 1;
SELECT 
    created_at, email AS total
FROM
    users
ORDER BY created_at
LIMIT 1;
SELECT 
    MONTHNAME(created_at) AS month, COUNT(*) AS count
FROM
    users
GROUP BY MONTHNAME(created_at)
ORDER BY COUNT(*);
SELECT 
    COUNT(*) AS yahoo_users
FROM
    users
WHERE
    email LIKE '%yahoo%';
    
SELECT 
    CASE
        WHEN email LIKE '%@yahoo%' THEN 'yahoo'
        WHEN email LIKE '%@gmail%' THEN 'gmail'
        WHEN email LIKE '%@hotmail%' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(*) AS total_users
FROM
    users
GROUP BY provider;
