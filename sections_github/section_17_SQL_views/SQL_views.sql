SELECT 
    *
FROM
    dept_emp;
    
-- some people have changed departments so they appear more than once in dept_emp
SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS Num
FROM
    dept_emp
GROUP BY emp_no
HAVING Num > 1;

-- visualize only the period encompassing the last (most recent) contract of each employee
CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
    
SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;

-- exercise Create a view that will extract the average salary of all managers registered in the database. 
-- Round this value to the nearest cent.
CREATE OR REPLACE VIEW v_avg_manager_salary AS
    SELECT 
        ROUND(AVG(s.salary), 2) AS avg_manager_salary
    FROM
        dept_manager dm
            JOIN
        salaries s ON dm.emp_no = s.emp_no;








