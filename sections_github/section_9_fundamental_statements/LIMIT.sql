-- "Please show me the employee numbers of the 10 highest paid employees in the database."
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10; # NOTE the limit clause goes at the end of the query
    
SELECT 
    *
FROM
    salaries
ORDER BY emp_no DESC
LIMIT 10;

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC
LIMIT 100;