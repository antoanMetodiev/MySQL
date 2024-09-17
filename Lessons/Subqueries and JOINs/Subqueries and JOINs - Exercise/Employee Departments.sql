SELECT employee_id, first_name, salary, name AS 'department_name' FROM employees e
JOIN departments d ON d.department_id =  e.department_id
WHERE e.salary > 15000
ORDER BY d.department_id DESC LIMIT 5;