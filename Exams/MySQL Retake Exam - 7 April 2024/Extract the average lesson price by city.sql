CREATE FUNCTION udf_average_lesson_price_by_city (name VARCHAR(40))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
	RETURN (SELECT AVG(dsc.average_lesson_price) FROM cities c
	JOIN driving_schools dsc ON dsc.city_id = c.id
	WHERE c.name = name
	GROUP BY c.name);
END