-- how many employees are registered in our database
SELECT 
    COUNT(emp_no)
FROM
    employees;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    
-- how many different names are in the employees table
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
-- exercise
-- How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table?

SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary >= 100000;
    
-- How many managers do we have in the “employees” database? Use the star symbol (*) in your code to solve this exercise. 
SELECT 
    COUNT(*)
FROM
    dept_manager;