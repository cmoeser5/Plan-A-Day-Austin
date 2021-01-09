DELETE FROM locations
WHERE  id IN
(SELECT id FROM
(SELECT id, ROW_NUMBER() OVER(PARTITION BY name
ORDER BY id) AS row_num
FROM locations) t
WHERE t.row_num>1);