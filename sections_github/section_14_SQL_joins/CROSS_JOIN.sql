-- join all the data in the dept_manager and departments tables
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
# all department managers have been connected with all departments

SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
# no WHERE or ON
# note JOIN without ON is not considered best practice. In this case CROSS JOIN is best practice

-- display all departments except for the one the manager is currently head of 
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
d.dept_no != dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

SELECT 
    e.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no != dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

-- exercise 1
-- Use a CROSS JOIN to return a list with all possible combinations 
-- between managers from the dept_manager table and department number 9.

SELECT 
    d.*, dm.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
WHERE
    d.dept_no = 'd009'
ORDER BY dm.emp_no , d.dept_no;

/* exercise 2
Return a list with the first 10 employees with all the departments they can be assigned to.
Hint: Don’t use LIMIT; use a WHERE clause. */

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_no;