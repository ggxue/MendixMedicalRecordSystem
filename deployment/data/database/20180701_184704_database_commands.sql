CREATE TABLE "administration$account_patientdetails" (
	"administration$accountid" BIGINT NOT NULL,
	"emrsystem$patientdetailsid" BIGINT NOT NULL,
	PRIMARY KEY("administration$accountid","emrsystem$patientdetailsid"));
CREATE INDEX "idx_administration$account_patientdetails_emrsystem$patientdetails_administration$account" ON "administration$account_patientdetails" ("emrsystem$patientdetailsid","administration$accountid");
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('49e6af82-f7e1-4557-99d2-847e50ad25c9', 
'Administration.Account_PatientDetails', 
'administration$account_patientdetails', 
'3078a23e-13b2-4a9b-84e4-2881fdee53c6', 
'5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
'administration$accountid', 
'emrsystem$patientdetailsid', 
'idx_administration$account_patientdetails_emrsystem$patientdetails_administration$account');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180701 18:47:03';
