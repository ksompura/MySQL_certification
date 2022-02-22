SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
-- 232 total people named denis, but only 140 are named denis and are male

-- AND exercise
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';
