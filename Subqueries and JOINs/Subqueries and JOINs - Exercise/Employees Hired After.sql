SELECT first_name, last_name, hire_date, name AS 'dept_name' FROM employees e
JOIN departments d ON d.department_id = e.department_id
WHERE e.hire_date > '1999-1-1' AND d.name = 'Finance' OR d.name = 'Sales'
ORDER BY e.hire_date;