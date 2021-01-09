CREATE TABLE locations2 AS
	SELECT 
	id, 
	name, 
	rating,
	user_ratings_total,
	split_part(location, ',', 1) AS latitude
     , split_part(location, ',', 2) AS longitude,

	split_part(types, ',', 1) AS types1
     , split_part(types, ',', 2) AS types2
     , split_part(types, ',', 3) AS types3
     , split_part(types, ',', 4) AS types4
	 , split_part(types, ',', 5) AS types5
     , split_part(types, ',', 6) AS types6
     , split_part(types, ',', 7) AS types7
	
	
FROM   locations;