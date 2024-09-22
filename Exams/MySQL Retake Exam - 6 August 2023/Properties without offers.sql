SELECT
SUBSTRING(p.address, 1, 6) AS 'agent_name',
(LENGTH(p.address) * 5430) AS 'price'
FROM properties p
WHERE p.id NOT IN (SELECT property_id FROM property_offers)
ORDER BY agent_name DESC, price DESC;