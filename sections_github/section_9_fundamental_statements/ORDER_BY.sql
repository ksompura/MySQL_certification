SELECT 
    *
FROM
    employees
ORDER BY first_name;

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

-- sort by first and last name
SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name;

-- exercise
-- Select all data from the “employees” table, ordering it by “hire date” in descending order.

SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;
