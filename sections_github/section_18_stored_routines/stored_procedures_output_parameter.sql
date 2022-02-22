USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;

DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out(in p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
SELECT
	AVG(s.salary)
INTO p_avg_salary FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
END$$

DELIMITER ;

-- exercise
# Create a procedure called ‘emp_info’ that uses as parameters the first 
# and the last name of an individual, and returns their employee number.
USE employees;
DROP PROCEDURE IF EXISTS emp_info;

DELIMITER $$
CREATE PROCEDURE emp_info(in p_first_name VARCHAR(15), in p_last_name VARCHAR(20),
							out p_emp_no INTEGER)
BEGIN
		SELECT 
			emp_no
		FROM
			employees e
		WHERE
			e.first_name = p_first_name AND e.last_name = p_last_name;
END$$

DELIMITER ;


-- Parto Bamford 10003
