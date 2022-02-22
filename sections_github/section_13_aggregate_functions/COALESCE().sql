SELECT 
    *
FROM
    departments_dup;

-- modify to allow null values
ALTER TABLE departments_dup
Change column dept_name dept_name VARCHAR(40) NULL;

INSERT INTO departments_dup
(
	dept_no
)
VALUES
('d010'),
('d011');

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

-- Add in new column for department manager next to department name
ALTER TABLE employees.departments_dup
ADD COLUMN dept_manager VARCHAR(255) NULL AFTER dept_name;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

COMMIT;