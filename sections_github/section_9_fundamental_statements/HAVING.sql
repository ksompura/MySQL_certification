-- in this query WHERE and HAVING are interchangable
SELECT 
    *
FROM
    employees
HAVING
    hire_date >= '2000-01-01';
    
    

-- in this case, only HAVING works
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250 # names have to appear more than 250 times to be included
ORDER BY first_name;

-- exercise
-- Select all employees whose average salary is higher than $120,000 per annum.

SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
group by emp_no
order by emp_no;

SELECT 
    emp_no, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;

/*
When using WHERE instead of HAVING, 
the output is larger because in the output we include individual contracts higher than $120,000 per year. 
The output does not contain average salary values. 
*/
