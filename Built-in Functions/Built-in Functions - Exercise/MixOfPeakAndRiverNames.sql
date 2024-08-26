SELECT peak_name, river_name, LOWER(CONCAT(SUBSTRING(peak_name, 1, CHAR_LENGTH(peak_name) - 1), river_name)) AS 'mix' FROM (peaks, rivers)
WHERE LOWER(RIGHT(peak_name, 1)) = LOWER(LEFT(river_name, 1))
ORDER BY mix;