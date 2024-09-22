CREATE PROCEDURE udp_special_offer(first_name VARCHAR(50))
BEGIN
	UPDATE property_offers po
	JOIN agents a ON a.id = po.agent_id
	SET price = price * 0.90
	WHERE first_name = first_name;
END 