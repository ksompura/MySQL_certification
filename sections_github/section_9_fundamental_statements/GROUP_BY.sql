SELECT 
    first_name
FROM
    employees
GROUP BY first_name;

-- the above query is the same as the below query
SELECT DISTINCT
    first_name
FROM
    employees;
    
# note, group by is slower than select distinct

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;