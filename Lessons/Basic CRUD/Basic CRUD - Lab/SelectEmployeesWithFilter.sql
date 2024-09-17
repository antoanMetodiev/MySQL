SELECT
id,
CONCAT_WS(' ', first_name, last_name) AS 'fullname',
job_title,
salary from employees
WHERE salary > 1000.00
ORDER BY id;