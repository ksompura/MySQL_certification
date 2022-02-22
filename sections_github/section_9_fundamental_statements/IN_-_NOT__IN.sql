
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';
        
-- satisfy more than 2 conditions in a more professional way
-- using IN operator
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie', 'Mark', 'Nathan');
    
-- everyname besides the 3
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie', 'Mark', 'Nathan');
    
/*IN - NOT IN - exercise 1

Use the IN operator to select all individuals from the “employees” table, whose first name is either “Denis”, or “Elvis”.*/
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Denis' , 'Elvis');
    
-- Exercise 2 Extract all records from the ‘employees’ table, aside from those with employees named John, Mark, or Jacob.
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('John' , 'Mark', 'Jacob');