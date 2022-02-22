SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary) -- salary acts as an argument for COUNT
FROM
    salaries;
    
-- "How many employee start dates are in the database?"
SELECT 
    COUNT(DISTINCT from_date)
FROM
    salaries;

SELECT 
    COUNT(*)
FROM
    salaries;
    
-- exercise 
-- How many departments are there in the “employees” database? Use the ‘dept_emp’ table to answer the question.
SELECT 
    COUNT(DISTINCT dept_no)
FROM
    dept_emp;
