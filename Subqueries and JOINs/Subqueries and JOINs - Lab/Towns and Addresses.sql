SELECT t.town_id, name AS 'town_name', address_text FROM towns AS t JOIN addresses AS a
ON t.town_id = a.town_id
WHERE name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY a.town_id, a.address_id;