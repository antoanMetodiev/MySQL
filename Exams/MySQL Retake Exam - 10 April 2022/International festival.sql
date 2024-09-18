SELECT name, COUNT(*) AS 'movies_count' FROM countries c
JOIN movies m ON m.country_id = c.id
GROUP BY c.name
HAVING movies_count >= 7
ORDER BY c.name DESC;