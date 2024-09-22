CREATE FUNCTION udf_offers_from_city_name (cityName VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(*) FROM property_offers pt
	JOIN properties p ON p.id = pt.property_id
	JOIN cities c ON p.city_id = c.id
	WHERE c.name = cityName);
END