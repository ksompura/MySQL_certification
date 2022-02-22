-- return the first 1,000 rows from the 'employees' table

USE employees;

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN

			SELECT * FROM employees
            LIMIT 1000;
END$$

DELIMITER ;

call employees.select_employees();

call select_employees();

DROP PROCEDURE select_employees;

-- exercise Create a procedure that will provide the average salary of all employees.
-- Then, call the procedure.

USE employees;

DROP PROCEDURE IF EXISTS avg_salary;

DELIMITER $$
 CREATE PROCEDURE avg_salary()
 BEGIN
		SELECT 
			AVG(salary) AS avg_salary 
        FROM salaries;
 END$$
 
 DELIMITER ;
 
 call employees.avg_salary();
 
 