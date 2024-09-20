SELECT CONCAT(first_name,' ', last_name) AS 'full_name',
age FROM students
WHERE first_name LIKE '%a%' AND age = 19
ORDER BY id;