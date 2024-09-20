SELECT c.name, COUNT(*) AS 'instructors_count' FROM instructors i
JOIN instructors_driving_schools ids ON ids.instructor_id = i.id
JOIN driving_schools ds ON ds.id = ids.driving_school_id
JOIN cities c ON c.id = ds.city_id
GROUP BY c.name
ORDER BY instructors_count DESC;