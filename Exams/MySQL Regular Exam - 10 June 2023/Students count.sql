SELECT COUNT(*) AS 'students_count', uni.name AS 'university_name' FROM courses c
JOIN universities uni ON c.university_id = uni.id
JOIN students_courses sc ON sc.course_id = c.id
GROUP BY uni.name
HAVING students_count >= 8
ORDER BY students_count DESC, university_name DESC;