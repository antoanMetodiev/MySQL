SELECT CONCAT(first_name,' ', last_name) AS 'Full Name',
CONCAT(IF(died IS NULL, NULL, ABS(DATEDIFF(born, died)))) AS 'Days Lived'
FROM authors;