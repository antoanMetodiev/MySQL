SELECT starting_point, end_point, leader_id, CONCAT_WS(' ', first_name, last_name) AS 'leader_name' FROM routes r, campers c
WHERE r.leader_id = c.id;