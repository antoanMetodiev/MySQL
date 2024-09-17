SELECT c.country_code, COUNT(c.country_code) AS 'mountain_range'
FROM countries c
JOIN mountains_countries mc ON mc.country_code = c.country_code
JOIN mountains m ON m.id = mc.mountain_id
WHERE c.country_code IN ('US','RU', 'BG')
GROUP BY c.country_code
ORDER BY 'mountain_range' DESC;