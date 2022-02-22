-- exercise
# Create a trigger that checks if the hire date of an employee is higher than the current date. 
# If true, set this date to be the current date. Format the output appropriately (YY-MM-DD).
DELIMITER $$

CREATE TRIGGER trig_ins_hire_date
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
	
    IF NEW.hire.date > date_format(sysdate(), '%Y-%m-%d') THEN
		SET NEW.hire_date = date_format(sysdate(), '%Y-%m-%d');
	END IF;

END $$
DELIMITER ;