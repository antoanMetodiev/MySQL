CREATE FUNCTION udf_average_salary_by_position_name (name VARCHAR(40))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
	RETURN (SELECT AVG(salary) FROM workers w
	JOIN positions p ON p.id = w.position_id
	WHERE p.name = name);
END