SELECT department_id, MIN(salary) AS 'min_salary' FROM employees
GROUP BY department_id
HAVING min_salary > 800
ORDER BY min_salary LIMIT 1;
