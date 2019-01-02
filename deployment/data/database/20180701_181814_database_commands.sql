CREATE TABLE "emrsystem$patientdetails_account" (
	"emrsystem$patientdetailsid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("emrsystem$patientdetailsid","administration$accountid"));
CREATE INDEX "idx_emrsystem$patientdetails_account_administration$account_emrsystem$patientdetails" ON "emrsystem$patientdetails_account" ("administration$accountid","emrsystem$patientdetailsid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('d027a084-14af-419f-a220-ff8438a18c15', 
'EMRSystem.PatientDetails_Account', 
'emrsystem$patientdetails_account', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'emrsystem$patientdetailsid', 
'administration$accountid', 
'idx_emrsystem$patientdetails_account_administration$account_emrsystem$patientdetails');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180701 18:18:13';
