SELECT CONCAT(first_name, ' ', last_name) AS 'full name',
CONCAT(REVERSE(last_name), LENGTH(last_name), '@cast.com') AS 'email',
(2022 - YEAR(birthdate)) AS 'age', height FROM actors a
WHERE a.id NOT IN (SELECT actor_id FROM movies_actors)
ORDER BY height;