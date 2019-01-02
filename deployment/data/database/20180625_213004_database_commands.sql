ALTER TABLE "emrsystem$allergiesandadversereactions_patient" DROP CONSTRAINT "uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid";
DROP INDEX "idx_emrsystem$allergiesandadversereactions_patient_emrsystem$patient_emrsystem$allergiesandadversereactions";
ALTER TABLE "emrsystem$medication_patient" DROP CONSTRAINT "uniq_emrsystem$medication_patient_emrsystem$currentmedicationid";
DROP INDEX "idx_emrsystem$medication_patient_emrsystem$patient_emrsystem$currentmedication";
ALTER TABLE "emrsystem$medicalproblems_patient" DROP CONSTRAINT "uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid";
DROP INDEX "idx_emrsystem$medicalproblems_patient_emrsystem$patient_emrsystem$currentproblems";
ALTER TABLE "emrsystem$diagnosis_patient" DROP CONSTRAINT "uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid";
DROP INDEX "idx_emrsystem$diagnosis_patient_emrsystem$patient_emrsystem$diagnosis";
ALTER TABLE "emrsystem$procedures_patient" DROP CONSTRAINT "uniq_emrsystem$procedures_patient_emrsystem$proceduresid";
DROP INDEX "idx_emrsystem$procedures_patient_emrsystem$patient_emrsystem$procedures";
ALTER TABLE "emrsystem$investigation_patient" DROP CONSTRAINT "uniq_emrsystem$investigation_patient_emrsystem$recenttestsid";
DROP INDEX "idx_emrsystem$investigation_patient_emrsystem$patient_emrsystem$recenttests";
ALTER TABLE "emrsystem$patient" RENAME TO "emrsystem$patientdetails";
ALTER TABLE "emrsystem$allergiesandadversereactions_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$allergiesandadversereactions_patient_emrsystem$patientdetails_emrsystem$allergiesandadversereactions" ON "emrsystem$allergiesandadversereactions_patient" ("emrsystem$patientdetailsid","emrsystem$allergiesandadversereactionsid");
ALTER TABLE "emrsystem$allergiesandadversereactions_patient" ADD CONSTRAINT "uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid" UNIQUE ("emrsystem$allergiesandadversereactionsid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid', 
'0cc38c2e-438e-48cd-a63c-dab6dd6930dd', 
'cd3ac06b-7c8f-3843-a981-085e9a2b7488');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.AllergiesAndAdverseReactions_Patient', 
"table_name" = 'emrsystem$allergiesandadversereactions_patient', 
"parent_entity_id" = 'c4179d70-3e62-4ab6-8a26-caa9ee5964f0', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$allergiesandadversereactionsid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$allergiesandadversereactions_patient_emrsystem$patientdetails_emrsystem$allergiesandadversereactions'
 WHERE "id" = '0cc38c2e-438e-48cd-a63c-dab6dd6930dd';
ALTER TABLE "emrsystem$medication_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$medication_patient_emrsystem$patientdetails_emrsystem$currentmedication" ON "emrsystem$medication_patient" ("emrsystem$patientdetailsid","emrsystem$currentmedicationid");
ALTER TABLE "emrsystem$medication_patient" ADD CONSTRAINT "uniq_emrsystem$medication_patient_emrsystem$currentmedicationid" UNIQUE ("emrsystem$currentmedicationid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$medication_patient_emrsystem$currentmedicationid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$medication_patient_emrsystem$currentmedicationid', 
'a18a9e65-5567-464b-89b9-6c6100477696', 
'6210fdb5-ae55-3da9-ab11-bb08834921fe');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.Medication_Patient', 
"table_name" = 'emrsystem$medication_patient', 
"parent_entity_id" = '3f8e9ea4-5324-4125-87f4-b2c29cca5546', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$currentmedicationid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$medication_patient_emrsystem$patientdetails_emrsystem$currentmedication'
 WHERE "id" = 'a18a9e65-5567-464b-89b9-6c6100477696';
ALTER TABLE "emrsystem$medicalproblems_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$medicalproblems_patient_emrsystem$patientdetails_emrsystem$currentproblems" ON "emrsystem$medicalproblems_patient" ("emrsystem$patientdetailsid","emrsystem$currentproblemsid");
ALTER TABLE "emrsystem$medicalproblems_patient" ADD CONSTRAINT "uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid" UNIQUE ("emrsystem$currentproblemsid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid', 
'de90a00a-75f8-4737-b125-73183a1a3f89', 
'216298dd-25ee-3354-930b-a7ac018a3692');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.MedicalProblems_Patient', 
"table_name" = 'emrsystem$medicalproblems_patient', 
"parent_entity_id" = '66af0fbc-7a5f-4035-8903-985d1bdbd4e8', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$currentproblemsid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$medicalproblems_patient_emrsystem$patientdetails_emrsystem$currentproblems'
 WHERE "id" = 'de90a00a-75f8-4737-b125-73183a1a3f89';
ALTER TABLE "emrsystem$diagnosis_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$diagnosis_patient_emrsystem$patientdetails_emrsystem$diagnosis" ON "emrsystem$diagnosis_patient" ("emrsystem$patientdetailsid","emrsystem$diagnosisid");
ALTER TABLE "emrsystem$diagnosis_patient" ADD CONSTRAINT "uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid" UNIQUE ("emrsystem$diagnosisid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid', 
'13fa2eb9-b5b0-412b-a8bf-0ea4a238fb33', 
'9cee8e40-d312-359d-8025-05f3e3b40ee2');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.Diagnosis_Patient', 
"table_name" = 'emrsystem$diagnosis_patient', 
"parent_entity_id" = '53b2d4f6-fd16-40b1-9cc1-58cedc2b1985', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$diagnosisid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$diagnosis_patient_emrsystem$patientdetails_emrsystem$diagnosis'
 WHERE "id" = '13fa2eb9-b5b0-412b-a8bf-0ea4a238fb33';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'EMRSystem.PatientDetails', 
"table_name" = 'emrsystem$patientdetails', 
"superentity_id" = NULL
 WHERE "id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459';
ALTER TABLE "emrsystem$procedures_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$procedures_patient_emrsystem$patientdetails_emrsystem$procedures" ON "emrsystem$procedures_patient" ("emrsystem$patientdetailsid","emrsystem$proceduresid");
ALTER TABLE "emrsystem$procedures_patient" ADD CONSTRAINT "uniq_emrsystem$procedures_patient_emrsystem$proceduresid" UNIQUE ("emrsystem$proceduresid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$procedures_patient_emrsystem$proceduresid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$procedures_patient_emrsystem$proceduresid', 
'1b1d3098-8173-4a17-a056-b705f03519b2', 
'22d53f92-0d3b-391f-b10e-822bfe5c2b55');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.Procedures_Patient', 
"table_name" = 'emrsystem$procedures_patient', 
"parent_entity_id" = '351d2ba1-48b7-4cd7-8a84-92bbf1aa292e', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$proceduresid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$procedures_patient_emrsystem$patientdetails_emrsystem$procedures'
 WHERE "id" = '1b1d3098-8173-4a17-a056-b705f03519b2';
ALTER TABLE "emrsystem$investigation_patient" ALTER COLUMN "emrsystem$patientid" RENAME TO "emrsystem$patientdetailsid";
CREATE INDEX "idx_emrsystem$investigation_patient_emrsystem$patientdetails_emrsystem$recenttests" ON "emrsystem$investigation_patient" ("emrsystem$patientdetailsid","emrsystem$recenttestsid");
ALTER TABLE "emrsystem$investigation_patient" ADD CONSTRAINT "uniq_emrsystem$investigation_patient_emrsystem$recenttestsid" UNIQUE ("emrsystem$recenttestsid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$investigation_patient_emrsystem$recenttestsid';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_emrsystem$investigation_patient_emrsystem$recenttestsid', 
'a9f4269d-80f4-4464-a34a-f3b939c1fa5f', 
'fe160d84-f514-317f-b230-2675f37a21af');
UPDATE "mendixsystem$association"
 SET "association_name" = 'EMRSystem.Investigation_Patient', 
"table_name" = 'emrsystem$investigation_patient', 
"parent_entity_id" = '97f9491a-d4dc-4727-a0f9-8760241d1b69', 
"child_entity_id" = '5d63a0e2-ce2c-49c6-a0b5-7250de560459', 
"parent_column_name" = 'emrsystem$recenttestsid', 
"child_column_name" = 'emrsystem$patientdetailsid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_emrsystem$investigation_patient_emrsystem$patientdetails_emrsystem$recenttests'
 WHERE "id" = 'a9f4269d-80f4-4464-a34a-f3b939c1fa5f';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180625 21:29:59';
