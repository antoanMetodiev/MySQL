SELECT
e.employee_id,
CONCAT(e.first_name, ' ', e.last_name) AS 'employee_name',
(
	SELECT CONCAT(e2.first_name, ' ', e2.last_name) FROM employees e2
    WHERE e.manager_id = e2.employee_id
) AS 'manager_name',
(
	SELECT name AS 'department_name' FROM departments d2
    WHERE e.department_id = d2.department_id
) AS 'department_name'
FROM employees e
WHERE e.manager_id IS NOT NULL
ORDER BY e.employee_id LIMIT 5;