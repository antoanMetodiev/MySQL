SELECT town_id, name FROM towns
WHERE SUBSTR(name, 1, 1) = 'M' OR SUBSTR(name, 1, 1) = 'K'
OR SUBSTR(name, 1, 1) = 'B' OR SUBSTR(name, 1, 1) = 'E'
ORDER BY name;