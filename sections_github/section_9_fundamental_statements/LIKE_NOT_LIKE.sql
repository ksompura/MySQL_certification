-- look for a pattern, look for all names that begin with "Mar..."
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');

-- "_" will return only one character unlike the % symbol
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');

-- NOT LIKE will return everything but what you specify
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Mar%');
    
-- Exercise

/*use the LIKE operator to select the data about all individuals, 
whose first name starts with “Mark”; 
specify that the name can be succeeded by any sequence of characters. */
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark%');

-- Retrieve a list with all employees who have been hired in the year 2000. 
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('2000%');
    
    
-- Retrieve a list with all employees whose employee number is written with 5 characters, and starts with “1000”.  
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');


