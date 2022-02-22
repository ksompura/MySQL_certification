-- JOIN and WHERE used together
-- find people who make more than $145,000
SELECT 
    e.emp_no, e.first_name, e.last_name, s.salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    s.salary > 145000;
    
-- exercise Select the first and last name, the hire date, and the job title of all employees 
-- whose first name is “Margareta” and have the last name “Markovitch”.
SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, t.title
FROM
    employees e
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    e.first_name = 'Margareta'
        AND e.last_name = 'Markovitch';
