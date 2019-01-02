CREATE TABLE "emrsystem$patientdetails_user" (
	"emrsystem$patientdetailsid" BIGINT NOT NULL,
	"system$userid" BIGINT NOT NULL,
	PRIMARY KEY("emrsystem$patientdetailsid","system$userid"));
CREATE INDEX "idx_emrsystem$patientdetails_user_system$user_emrsystem$patientdetails" ON "emrsystem$patientdetails_user" ("system$userid","emrsystem$patientdetailsid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('2182254e-88af-4421-a39b-8e946ef4dac6', 
'EMRSystem.PatientDetails_User', 
'emrsystem$patientdetails_user', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'282e2e60-88a5-469d-84a5-ba8d9151644f', 
'emrsystem$patientdetailsid', 
'system$userid', 
'idx_emrsystem$patientdetails_user_system$user_emrsystem$patientdetails');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180630 14:56:47';
