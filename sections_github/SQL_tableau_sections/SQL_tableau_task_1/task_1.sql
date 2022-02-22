/* Task 1 – Create a visualization that provides a breakdown between 
the male and female employees working in the company each year, starting from 1990.

for Task 1, please assume that you’ll need to use the from_date column from 
the dept_emp table to count the number of employees working in the company each year. */

SELECT 
    YEAR(de.from_date) AS calendar_year,
    e.gender,
    COUNT(*) AS number_of_employees
FROM
    t_dept_emp de
        JOIN
    t_employees e ON de.emp_no = e.emp_no
GROUP BY calendar_year , e.gender
HAVING calendar_year >= 1990
ORDER BY calendar_year
;