/* Task 3: Create an SQL stored procedure that will allow you to obtain the 
average male and female salary per department within a certain salary range. 
Let this range be defined by two values the user can insert when calling the procedure.
*/

DROP PROCEDURE IF EXISTS avg_salary_range;

DELIMITER $$
CREATE PROCEDURE avg_salary_range (IN min_salary FLOAT, IN max_salary FLOAT)
BEGIN
SELECT
	e.gender, d.dept_name, ROUND(AVG(s.salary), 2) AS avg_salary
FROM
	t_employees e
JOIN
	t_salaries s ON e.emp_no = s.emp_no
JOIN 
	t_dept_emp de ON e.emp_no = de.emp_no
JOIN
	t_departments d ON d.dept_no = de.dept_no
WHERE 
	s.salary BETWEEN min_salary AND max_salary
GROUP BY e.gender, d.dept_no
ORDER BY d.dept_no, e.gender;

END$$

DELIMITER ;

CALL avg_salary_range(50000,90000);
