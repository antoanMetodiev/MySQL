SELECT employee_id, first_name, manager_id, (
	SELECT first_name AS 'manager_name' FROM employees e2
    WHERE e1.manager_id = e2.employee_id
) AS 'manager_name' FROM employees e1
WHERE e1.manager_id IN (3, 7)
ORDER BY e1.first_name;