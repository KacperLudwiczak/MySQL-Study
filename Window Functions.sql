create database window_functions;
CREATE TABLE employees (
    emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);
 
INSERT INTO employees (department, salary) VALUES
('engineering', 80000),
('engineering', 69000),
('engineering', 70000),
('engineering', 103000),
('engineering', 67000),
('engineering', 89000),
('engineering', 91000),
('sales', 59000),
('sales', 70000),
('sales', 159000),
('sales', 72000),
('sales', 60000),
('sales', 61000),
('sales', 61000),
('customer service', 38000),
('customer service', 45000),
('customer service', 61000),
('customer service', 40000),
('customer service', 31000),
('customer service', 56000),
('customer service', 55000);
SELECT 
    *
FROM
    employees;
    
 SELECT 
    department, AVG(salary)
FROM
    employees
GROUP BY department;

 SELECT  
 emp_no,  department, salary, 
 AVG(salary) OVER() 
 FROM employees;
 
 SELECT  
 emp_no,  department, salary, 
 MIN(salary) OVER(),
 MAX(salary) OVER()
 FROM employees;
 
 SELECT  
 emp_no,  department, salary, 
 AVG(salary) OVER(PARTITION BY department) 
 AS department_avg,
 AVG(salary) OVER()
 AS company_avg
 FROM employees;
 
 SELECT  
 emp_no,  department, salary, 
 COUNT(*) OVER(PARTITION BY department)
 AS department_count
 FROM employees;
 
 SELECT  
 emp_no,  department, salary, 
 SUM(salary) OVER(PARTITION BY department)
 AS department_payroll,
 SUM(salary) OVER()
 AS total_payroll
 FROM employees;
 
  SELECT  
 emp_no,  department, salary, 
 SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC)
 AS rolling_dep_salary,
  SUM(salary) OVER(PARTITION BY department)
 AS total_dep_salary
 FROM employees;
 
  SELECT  
 emp_no,  department, salary, 
 SUM(salary) OVER(PARTITION BY department ORDER BY salary)
 AS rolling_dep_salary,
  SUM(salary) OVER(PARTITION BY department)
 AS total_dep_salary
 FROM employees;
 
 SELECT  
 emp_no,  department, salary, 
MIN(salary) OVER(PARTITION BY department ORDER BY salary)
 AS rolling_min,
 MIN(salary) OVER(PARTITION BY department)
 AS total_min
 FROM employees;
 
  SELECT  
 emp_no,  department, salary,
 RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_sallary_rank,
 RANK() OVER(ORDER BY salary DESC) AS overall_sallary_rank
 FROM employees
 ORDER BY department;
 
 SELECT  
 emp_no,  department, salary,
 ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS department_sallary_row,
 RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_sallary_rank,
 RANK() OVER(ORDER BY salary DESC) AS overall_sallary_rank
 FROM employees
 ORDER BY department;
 
  SELECT  
 emp_no,  department, salary,
 ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary DESC) AS department_sallary_row,
 RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS department_sallary_rank,
 RANK() OVER(ORDER BY salary DESC) AS overall_rank,
 DENSE_RANK() OVER(ORDER BY salary DESC) AS overall_dens_rank
 FROM employees
 ORDER BY overall_rank;
 
   SELECT  
 emp_no,  department, salary,
 NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dep_salary_quartile,
 NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
 FROM employees;
 
   SELECT  
 emp_no,  department, salary,
 FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_dep,
 FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_paid_overall
  FROM employees;
 
  SELECT  
 emp_no,  department, salary,
 LAG(salary) OVER(ORDER BY salary DESC) AS previous_value,
 salary -  LAG(salary) OVER(ORDER BY salary DESC) AS salary_diff,
 salary -  LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff_lead
 FROM employees;
 
 SELECT  
 emp_no,  department, salary,
 LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) 
 AS previous_value_dep,
 salary -  LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) 
 AS salary_diff_dep,
 salary -  LEAD(salary) OVER(PARTITION BY department ORDER BY salary DESC) 
 AS salary_diff_lead_dep
 FROM employees;