CREATE PROCEDURE udp_award_movie(movie_title VARCHAR(50))
BEGIN
	UPDATE actors a
	JOIN movies_actors ma ON ma.actor_id= a.id
	JOIN movies m ON m.id = ma.movie_id
	SET a.awards = a.awards + 1
	WHERE title = movie_title;
END