CREATE PROCEDURE udp_graduate_all_students_by_year(year_started INT)
BEGIN
	UPDATE students s
	JOIN students_courses sc ON sc.student_id = s.id
	JOIN courses c ON c.id = sc.course_id
	SET is_graduated = true
	WHERE YEAR(c.start_date) = year_started;
END