-- "Extract a list of all names that are encountered less than 200 times.
-- Let the data refer to people hired after the 1st of January 1999."

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

-- exercise
-- Select the employee numbers of all individuals who have signed more than 1 contract after the 1st of January 2000.
Select 
emp_no #, count(from_date) as num_contracts
from 
dept_emp
where from_date > '2000-01-01'
group by emp_no
having count(from_date) > 1
order by emp_no;