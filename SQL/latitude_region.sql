-- changed column typed from "text" to "double precision"  (Double Precision is postgres for Float )
ALTER TABLE locations2
ALTER COLUMN longitude TYPE FLOAT USING longitude::double precision;
​
ALTER TABLE locations2
ALTER COLUMN latitude TYPE FLOAT USING latitude::double precision;
​
-- added new columns for new regional classification
ALTER TABLE locations2
ADD COLUMN latitude_region VARCHAR(255);
​
ALTER TABLE locations2
ADD COLUMN longitude_region VARCHAR(255);
​
-- designate region based on break point values calculated in previous step
UPDATE locations2
SET latitude_region = 	CASE
					  	WHEN latitude > 30.20
                	  	THEN 'North'
           			  	WHEN latitude > 30.15 AND (latitude_region IS NULL OR latitude_region = '')
                	  	THEN 'Central' 
					 	WHEN latitude <= 30.15 AND (latitude_region IS NULL OR latitude_region = '')
					  	THEN 'South'
						END
-- test
SELECT * FROM locations2			
