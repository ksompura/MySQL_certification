# remove the duplicate records from the 2 tables
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

# add back the initial records
INSERT INTO dept_manager_dup
VALUES ('110228','d003','1992-03-21','9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'Customer Service');

# LEFT JOIN
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
# in the above, dept_manager_dup is on the left and departments_dup is on the right

-- reorder tables, have to change SELECT (and ORDER BY) to make x.dept_no match FROM departments_dup ===> d <===
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

################ 
-- find what is only in the left table
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    dept_name IS NULL
ORDER BY m.dept_no;

/* exercise
Join the 'employees' and the 'dept_manager' tables to return 
a subset of all the employees whose last name is Markovitch. 
See if the output contains a manager with that name.  

Hint: Create an output containing information corresponding to the following fields:
 ‘emp_no’, ‘first_name’, ‘last_name’, ‘dept_no’, ‘from_date’. 
 Order by 'dept_no' descending, and then by 'emp_no'.
*/

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , e.emp_no;

select * from employees limit 5;