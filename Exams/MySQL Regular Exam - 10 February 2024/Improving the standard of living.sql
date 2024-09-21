CREATE PROCEDURE udp_increase_salaries_by_country(country_name VARCHAR(40))
BEGIN
	UPDATE countries c
	JOIN countries_preserves cp ON cp.country_id = c.id
	JOIN preserves p ON p.id = cp.preserve_id
	JOIN workers w ON w.preserve_id = p.id
	SET salary = salary * 1.05
	WHERE c.name = country_name;
END