CREATE FUNCTION udf_actor_history_movies_count(full_name VARCHAR(50))
RETURNS INT
DETERMINISTIC
BEGIN
	RETURN (SELECT COUNT(*) AS 'history_movies' FROM actors a
	JOIN movies_actors ma ON ma.actor_id = a.id
	JOIN movies m ON m.id = ma.movie_id
	JOIN genres_movies gm ON gm.movie_id = m.id
	JOIN genres g ON g.id = gm.genre_id
	WHERE a.first_name = 'Jared' AND g.name = 'History');
END