SELECT m.title,
(
	CASE
		WHEN ma.rating <= 4 THEN 'poor'
		WHEN ma.rating > 4 AND ma.rating <= 7 THEN 'good'
		WHEN ma.rating > 7 THEN 'excellent'
    END
) AS 'rating',
IF(ma.has_subtitles, 'english', '-') AS 'subtitles',
ma.budget
FROM movies m
JOIN movies_additional_info ma ON m.movie_info_id = ma.id
ORDER BY ma.budget DESC;