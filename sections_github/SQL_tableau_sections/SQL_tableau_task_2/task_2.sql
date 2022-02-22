/* Task 2 Compare the number of male managers to the number of female managers 
from different departments for each year, starting from 1990.

need columns: dept_name, gender, emp_no, from_date, to_date, calendar_year, active
active column with 1s and 0s to show when the person was active as a manager
if the calendar year falls within the from and to dates, put a 1, otherwise put a 0 */

SELECT 
    d.dept_name,
    ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    e.calendar_year,
    CASE
        WHEN e.calendar_year BETWEEN YEAR(dm.from_date) AND YEAR(dm.to_date) THEN 1
        ELSE 0
    END AS active
FROM
    (SELECT 
        YEAR(hire_date) AS calendar_year
    FROM
        t_employees
    GROUP BY calendar_year) e
        CROSS JOIN
    t_dept_manager dm
        JOIN
    t_departments d ON dm.dept_no = d.dept_no
        JOIN
    t_employees ee ON ee.emp_no = dm.emp_no
ORDER BY dm.emp_no , e.calendar_year;