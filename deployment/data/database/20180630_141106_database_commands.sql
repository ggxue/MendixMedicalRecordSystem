ALTER TABLE "emrsystem$patientdetails" ADD "formedicalresearch" BOOLEAN NULL;
UPDATE "emrsystem$patientdetails"
 SET "formedicalresearch" = true;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('a4054491-ad48-4d30-a1ae-e5bd8fc7098b', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'ForMedicalResearch', 
'formedicalresearch', 
10, 
0, 
'true', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180630 14:11:02';
