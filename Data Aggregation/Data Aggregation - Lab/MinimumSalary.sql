SELECT department_id, ROUND(MIN(salary)) AS Min_Salary FROM employees
GROUP BY department_id
HAVING Min_Salary > 800
ORDER BY department_id;
