-- AND takes precedence over OR, SQL will read the AND first and then the OR after
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender = 'M' OR gender = 'F';
-- the above query will return all last name male Denis as well as all female employees

-- correct way is to use parenthesis
SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND (gender = 'M' OR gender = 'F');
    
-- Operator precedence - exercise
-- Retrieve a list with all female employees whose first name is either Kellie or Aruna.

SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND (first_name = 'Kellie' OR first_name = 'Aruna');