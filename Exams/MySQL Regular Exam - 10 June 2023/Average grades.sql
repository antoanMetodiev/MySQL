CREATE FUNCTION udf_average_alumni_grade_by_course_name(course_name VARCHAR(60))
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
	RETURN (SELECT AVG(sc.grade) AS average_grade
	FROM students_courses sc
	JOIN students s ON s.id = sc.student_id
	JOIN courses c ON c.id = sc.course_id
	WHERE c.name = course_name AND s.is_graduated = 1);
END