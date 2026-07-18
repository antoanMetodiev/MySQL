SELECT COUNT(c.name) FROM products p
JOIN categories c ON c.id = p.category_id
WHERE p.price > 8
GROUP BY c.name
HAVING c.name = 'appetizers';
