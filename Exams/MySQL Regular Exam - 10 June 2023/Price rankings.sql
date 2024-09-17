SELECT uni.name AS 'university_name',
c.name AS 'city_name', uni.address,
(
	CASE
		WHEN tuition_fee < 800 THEN 'cheap'
		WHEN tuition_fee >= 800 AND tuition_fee < 1200 THEN 'normal'
		WHEN tuition_fee >= 1200 AND tuition_fee < 2500 THEN 'high'
		WHEN tuition_fee >= 2500 THEN 'expensive'
    END
) AS 'price_rank',
uni.tuition_fee
FROM universities uni
JOIN cities c ON c.id = uni.city_id
ORDER BY uni.tuition_fee;