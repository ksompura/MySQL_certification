-- create a variable
SET @v_avg_salary = 0;

-- extract a value that will be assinged to the new variable (call the procedure)
CALL employees.emp_avg_salary_out(11300, @v_avg_salary);

-- ask the software to display the output of the procedure
SELECT @v_avg_salary;

/* exercise
Create a variable, called ‘v_emp_no’, where you will store the output of the procedure you created in the last exercise.

Call the same procedure, inserting the values ‘Aruna’ and ‘Journel’ as a first and last name respectively.

Finally, select the obtained output. */

SET @v_emp_no = 0;
CALL employees.emp_info('Aruna','Journel', @v_emp_no);
SELECT @v_emp_no;