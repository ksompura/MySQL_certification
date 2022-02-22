# Notes on using joins
SELECT 
    m.dept_no, m.emp_no, m.from_date, m.to_date, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

# SQL reads JOIN as INNER JOIN so you don't need to specify "INNER"

# changing the ON order doesn't make a difference