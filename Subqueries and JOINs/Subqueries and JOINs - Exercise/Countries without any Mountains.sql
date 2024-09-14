SELECT COUNT(*) FROM countries c
WHERE c.country_code NOT IN (SELECT country_code FROM mountains_countries);