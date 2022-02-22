SELECT 
    *
FROM
    departments
LIMIT 10;

-- create blank table
CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
    
-- copy over data into new table 
INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT
	*
FROM
	departments;
    
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

-- exercise
-- Create a new department called “Business Analysis”. Register it under number ‘d010’.
-- Hint: To solve this exercise, use the “departments” table.

INSERT INTO departments
(
	dept_no,
    dept_name
)
VALUES
(
	'd010',
    'Business Analysis'
);

SELECT 
    *
FROM
    departments;