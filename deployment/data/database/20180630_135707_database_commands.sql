ALTER TABLE "emrsystem$patientdetails" ADD "statusapproved" BOOLEAN NULL;
UPDATE "emrsystem$patientdetails"
 SET "statusapproved" = false;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('bc2f5cee-a68c-45b7-9753-3a0b5831a4ab', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'StatusApproved', 
'statusapproved', 
10, 
0, 
'false', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180630 13:57:02';
