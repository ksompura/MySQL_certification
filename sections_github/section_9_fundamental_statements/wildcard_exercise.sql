-- Exercise

-- Extract all individuals from the ‘employees’ table whose first name contains “Jack”.
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
    
-- extract another list containing the names of employees that do not contain “Jack”. 
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');