SELECT first_name, last_name, name AS 'town', address_text FROM employees e
JOIN addresses a ON e.address_id = a.address_id
JOIN towns t ON t.town_id = a.town_id
ORDER BY e.first_name, e.last_name LIMIT 5;