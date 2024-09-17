SELECT employee_id, CONCAT_WS(' ', first_name, last_name) AS full_name, departments.department_id, name AS 'dapertment_name' FROM employees
  JOIN departments
  ON employees.employee_id = departments.manager_id
  ORDER BY employee_id LIMIT 5;