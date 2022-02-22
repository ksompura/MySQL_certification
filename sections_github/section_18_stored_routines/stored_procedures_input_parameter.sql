USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

-- enter employee number to find their different contracts
DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_salary(IN p_emp_no INTEGER)
BEGIN
SELECT
	e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE 
	e.emp_no = p_emp_no;
END$$

DELIMITER ;

-- can use aggregate functions in stored procedures
DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salary(IN p_emp_no INTEGER)
BEGIN
SELECT
	e.first_name, e.last_name, AVG(s.salary)
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE 
	e.emp_no = p_emp_no;
END$$

DELIMITER ;

call emp_avg_salary(11300);