SELECT m.id, m.title, mi.runtime, mi.budget, mi.release_date FROM movies_additional_info mi
JOIN movies m ON m.movie_info_id = mi.id
WHERE YEAR(mi.release_date) >= 1996 AND YEAR(mi.release_date) <= 1999
ORDER BY mi.runtime, m.id LIMIT 20;