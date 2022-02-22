-- first name equals 'Mark'
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Mark';
    
-- first name does not equal 'Mark'
SELECT 
    *
FROM
    employees
WHERE
    first_name != 'Mark';

-- list of employees hired after 2000
SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';
    
-- list of employees hired before 1 of Februrary 1985
SELECT 
    *
FROM
    employees
WHERE
    hire_date < '1985-02-01';
    
-- exercise

-- Retrieve a list with data about all female employees who were hired in the year 2000 or after.

SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01'
        AND gender = 'F';
        
-- Extract a list with all employees’ salaries higher than $150,000 per annum. 
SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;