-- SELECT REPLACE(latitude, '{''lat'': ','') FROM locations2;

-- remove unwanted characters { and '' and : from latitude column
UPDATE locations2 SET latitude =  REPLACE(latitude, '{''lat'': ','');

-- remove unwanted characters '' and : from longitude column
UPDATE locations2 SET longitude =  REPLACE(longitude, '''lng'': ','');
UPDATE locations2 SET longitude =  REPLACE(longitude, '}','');

-- removed open and/or closed brackets from the 7 types columns
UPDATE locations2 SET types1 =  REPLACE(types1, '[','');
UPDATE locations2 SET types1 =  REPLACE(types1, ']','');
UPDATE locations2 SET types2 =  REPLACE(types2, ']','');
UPDATE locations2 SET types3 =  REPLACE(types3, ']','');
UPDATE locations2 SET types4 =  REPLACE(types4, ']','');
UPDATE locations2 SET types5 =  REPLACE(types5, ']','');
UPDATE locations2 SET types6 =  REPLACE(types6, ']','');
UPDATE locations2 SET types7 =  REPLACE(types7, ']','');

-- removed open single quotes from the 7 types columns
UPDATE locations2 SET types1 =  REPLACE(types1, '''','');
UPDATE locations2 SET types2 =  REPLACE(types2, '''','');
UPDATE locations2 SET types3 =  REPLACE(types3, '''','');
UPDATE locations2 SET types4 =  REPLACE(types4, '''','');
UPDATE locations2 SET types5 =  REPLACE(types5, '''','');
UPDATE locations2 SET types6 =  REPLACE(types6, '''','');
UPDATE locations2 SET types7 =  REPLACE(types7, '''','');


