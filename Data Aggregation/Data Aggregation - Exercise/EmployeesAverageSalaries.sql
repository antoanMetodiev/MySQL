CREATE TABLE random_table (
    SELECT * FROM employees
    WHERE salary > 30000
);

DELETE FROM random_table
WHERE manager_id = 42;

UPDATE random_table
SET salary = salary + 5000
WHERE department_id = 1;

SELECT department_id, AVG(salary) AS avg_salary FROM random_table
GROUP BY department_id
ORDER BY department_id;