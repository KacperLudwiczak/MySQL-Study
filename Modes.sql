SELECT @@GLOBAL .sql_mode;
SELECT @@SESSION .sql_mode;

SET GLOBAL sql_mode = 'modes'; 
SET SESSION sql_mode = 'modes'; 
