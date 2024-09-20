SELECT ds.id, ds.name, c.brand FROM driving_schools ds
JOIN cars c ON c.id = ds.car_id
LEFT JOIN instructors_driving_schools ids ON ids.driving_school_id = ds.id
WHERE ids.instructor_id IS NULL
ORDER BY c.brand, ds.id LIMIT 5;