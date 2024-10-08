SELECT e.employee_id, e.first_name,
	 CASE
		WHEN YEAR(p.start_date) >= 2005 THEN NULL
        ELSE p.name
     END
AS 'project_name' FROM employees e
JOIN employees_projects ep ON ep.employee_id = e.employee_id
JOIN projects p ON p.project_id = ep.project_id
WHERE e.employee_id = 24
ORDER BY p.name;