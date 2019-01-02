ALTER TABLE "emrsystem$patientdetails" ADD "viewbyhcp" BOOLEAN NULL;
UPDATE "emrsystem$patientdetails"
 SET "viewbyhcp" = true;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('a868bcb5-fd50-4aca-a411-a4e23b4c19fe', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'ViewByHCP', 
'viewbyhcp', 
10, 
0, 
'true', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180630 14:33:53';
