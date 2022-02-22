SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

COMMIT;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';
    
ROLLBACK;

COMMIT;

-- exercise
-- Change the “Business Analysis” department name to “Data Analysis”. Hint: To solve this exercise, use the “departments” table.
UPDATE departments 
SET 
    dept_name = 'Data Analaysis'
WHERE
    dept_no = 'd010';

select * from departments;