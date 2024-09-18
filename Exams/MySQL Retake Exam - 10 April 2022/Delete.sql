DELETE c
FROM countries c
LEFT JOIN movies m ON m.country_id = c.id
WHERE m.id IS NULL;
