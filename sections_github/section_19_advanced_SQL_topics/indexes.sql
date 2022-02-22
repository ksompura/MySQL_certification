# how many people have been hired after the 1st of January 2000?
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01';
    
CREATE INDEX i_hire_date ON employees(hire_date);

# SELECT all employees bearing the name "Georgi Facello"
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
        AND last_name = 'Facello';
        
CREATE INDEX i_composite ON employees(first_name, last_name);

SHOW INDEX FROM employees FROM employees;

-- exercise 1 Drop the ‘i_hire_date’ index.
DROP INDEX i_hire_date ON employees;

/* exercise 2 Select all records from the ‘salaries’ table of people whose salary is higher than $89,000 per annum.

Then, create an index on the ‘salary’ column of that table, and check if it has sped up the search of the same SELECT statement. */
SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;
    
CREATE INDEX i_salary ON salaries(salary);