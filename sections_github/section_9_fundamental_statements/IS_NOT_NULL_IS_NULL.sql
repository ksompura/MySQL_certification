SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;


SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
-- we can see every record has a first name

-- Exercise 
-- Select the names of all departments whose department number value is not null.
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NOT NULL;