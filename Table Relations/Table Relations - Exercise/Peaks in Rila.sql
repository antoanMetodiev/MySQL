SELECT (

    SELECT mountain_range FROM mountains
    WHERE mountain_range = 'Rila'

) AS 'mountain_range', peak_name, elevation AS 'peak_elevation' FROM peaks
WHERE mountain_id = 17
ORDER BY elevation DESC;