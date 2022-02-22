SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no
        ORDER BY emp_no);
        
-- more professional placement of ORDER BY (in the outer query
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no)
ORDER BY emp_no;

-- exercise
-- Select the entire information for all employees whose job title is “Assistant Engineer”.  Hint: Use employees table
SELECT 
    *
FROM
    employees e
WHERE
    EXISTS( SELECT 
            t.emp_no
        FROM
            titles t
        WHERE
            t.title = 'Assistant Engineer'
                AND t.emp_no = e.emp_no);