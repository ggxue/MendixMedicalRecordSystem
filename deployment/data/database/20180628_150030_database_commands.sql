ALTER TABLE "emrsystem$allergiesandadversereactions_patient" DROP CONSTRAINT "uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid";
ALTER TABLE "emrsystem$biochemistry_investigation" DROP CONSTRAINT "uniq_emrsystem$biochemistry_investigation_emrsystem$biochemistryid";
ALTER TABLE "emrsystem$biochemistry_investigation" DROP CONSTRAINT "uniq_emrsystem$biochemistry_investigation_emrsystem$recenttestsid";
ALTER TABLE "emrsystem$medication_patient" DROP CONSTRAINT "uniq_emrsystem$medication_patient_emrsystem$currentmedicationid";
ALTER TABLE "emrsystem$medicalproblems_patient" DROP CONSTRAINT "uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid";
ALTER TABLE "emrsystem$diagnosis_patient" DROP CONSTRAINT "uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid";
ALTER TABLE "emrsystem$event_currentproblem" DROP CONSTRAINT "uniq_emrsystem$event_currentproblem_emrsystem$eventid";
ALTER TABLE "emrsystem$event_currentproblem" DROP CONSTRAINT "uniq_emrsystem$event_currentproblem_emrsystem$currentproblemsid";
ALTER TABLE "emrsystem$examination_procedures" DROP CONSTRAINT "uniq_emrsystem$examination_procedures_emrsystem$examinationid";
ALTER TABLE "emrsystem$examination_procedures" DROP CONSTRAINT "uniq_emrsystem$examination_procedures_emrsystem$proceduresid";
ALTER TABLE "emrsystem$procedures_patient" DROP CONSTRAINT "uniq_emrsystem$procedures_patient_emrsystem$proceduresid";
ALTER TABLE "emrsystem$investigation_patient" DROP CONSTRAINT "uniq_emrsystem$investigation_patient_emrsystem$recenttestsid";
ALTER TABLE "emrsystem$referrals_recenttests" DROP CONSTRAINT "uniq_emrsystem$referrals_recenttests_emrsystem$referralsid";
ALTER TABLE "emrsystem$referrals_recenttests" DROP CONSTRAINT "uniq_emrsystem$referrals_recenttests_emrsystem$recenttestsid";
ALTER TABLE "emrsystem$riskandwarning_medication" DROP CONSTRAINT "uniq_emrsystem$riskandwarning_medication_emrsystem$currentmedicationid";
ALTER TABLE "emrsystem$riskandwarning_medication" DROP CONSTRAINT "uniq_emrsystem$riskandwarning_medication_emrsystem$riskandwarningid";
ALTER TABLE "system$backgroundjob_session" DROP CONSTRAINT "uniq_system$backgroundjob_session_system$backgroundjobid";
ALTER TABLE "system$backgroundjob_xasinstance" DROP CONSTRAINT "uniq_system$backgroundjob_xasinstance_system$backgroundjobid";
ALTER TABLE "system$session_user" DROP CONSTRAINT "uniq_system$session_user_system$sessionid";
ALTER TABLE "system$thumbnail_image" DROP CONSTRAINT "uniq_system$thumbnail_image_system$imageid";
ALTER TABLE "system$thumbnail_image" DROP CONSTRAINT "uniq_system$thumbnail_image_system$thumbnailid";
ALTER TABLE "system$tokeninformation_user" DROP CONSTRAINT "uniq_system$tokeninformation_user_system$tokeninformationid";
ALTER TABLE "system$user" DROP CONSTRAINT "uniq_system$user_name";
ALTER TABLE "system$user_language" DROP CONSTRAINT "uniq_system$user_language_system$userid";
ALTER TABLE "system$user_timezone" DROP CONSTRAINT "uniq_system$user_timezone_system$userid";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$allergiesandadversereactions_patient_emrsystem$allergiesandadversereactionsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$biochemistry_investigation_emrsystem$biochemistryid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$biochemistry_investigation_emrsystem$recenttestsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$medication_patient_emrsystem$currentmedicationid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$medicalproblems_patient_emrsystem$currentproblemsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$diagnosis_patient_emrsystem$diagnosisid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$event_currentproblem_emrsystem$currentproblemsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$event_currentproblem_emrsystem$eventid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$examination_procedures_emrsystem$examinationid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$examination_procedures_emrsystem$proceduresid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$procedures_patient_emrsystem$proceduresid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$investigation_patient_emrsystem$recenttestsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$referrals_recenttests_emrsystem$recenttestsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$referrals_recenttests_emrsystem$referralsid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$riskandwarning_medication_emrsystem$currentmedicationid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_emrsystem$riskandwarning_medication_emrsystem$riskandwarningid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$backgroundjob_session_system$backgroundjobid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$backgroundjob_xasinstance_system$backgroundjobid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$session_user_system$sessionid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$thumbnail_image_system$imageid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$thumbnail_image_system$thumbnailid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$tokeninformation_user_system$tokeninformationid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$user_name';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$user_language_system$userid';
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_system$user_timezone_system$userid';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20180628 15:00:27';
