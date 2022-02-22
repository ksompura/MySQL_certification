-- remove dept_manager from departments_dup
ALTER TABLE departments_dup
DROP COLUMN dept_manager;

-- change the dept_no and dept_name columns to NULL
ALTER TABLE departments_dup
CHANGE COLUMN  dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

-- insert a record whose department name is “Public Relations”. 
INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');


-- Delete the record(s) related to department number two. 
DELETE FROM departments_dup
WHERE dept_no = 'd002';


select * FROM departments_dup
ORDER BY dept_no;

-- create and fill dept_manager_dup table
DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    from_date DATE NOT NULL,
    to_date DATE NULL
);

INSERT INTO dept_manager_dup
SELECT * FROM dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES      (999904, '2017-01-01'),
			(999905, '2017-01-01'),
			(999906, '2017-01-01'),
			(999907, '2017-01-01');

DELETE FROM dept_manager_dup
WHERE dept_no = 'd001';

SELECT * FROM dept_manager_dup
ORDER BY emp_no DESC;