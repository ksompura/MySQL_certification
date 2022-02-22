SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

DELETE FROM departments_dup;

ROLLBACK;

-- exercise
-- Remove the department number 10 record from the “departments” table.
SELECT 
    *
FROM
    departments
ORDER BY dept_no DESC;

DELETE FROM departments 
WHERE
    dept_no = 'd010'