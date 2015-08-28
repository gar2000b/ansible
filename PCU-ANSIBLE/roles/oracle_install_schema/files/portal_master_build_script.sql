set echo ON;
set termout ON;
/**
* PCU Version 1.0 - Database Schema master set-up script..
* Tesco Bank PCU V1.0 (Database Scripts V1.0)
*/

set termout OFF;
set feedback ON;
set pages 50000;
set linesize 1000;
set serveroutput on;

set termout ON;
/* Executing portal_drop_users_factory_cascade_ora.sql (Step 1 of 5) */
/* This Script drops Users, Roles and Objects */
set termout OFF;
@@portal_drop_users_cascade_ora.sql

set termout ON;
/* Executing portal_create_schema_ora.sql (Step 2 of 5) */
/* This Script creates users, roles and assignments  */
set termout OFF;
@@portal_create_schema_ora.sql

set termout ON;
/* Executing portal_create_objects_*_ora.sql (Step 3 of 5) */
/* This Script creates tables, indexes, and sequences  */
set termout OFF;
@@portal_create_objects_tbcwp_sss_ora.sql
@@portal_create_objects_pcao_ora.sql
@@portal_create_objects_cco_ora.sql

set termout ON;
/* Executing portal_grant_permissions_ora.sql (Step 4 of 5) */
/* This Script grants security permissions to ROLES  */
set termout OFF;
/*@@portal_grant_permissions_ora.sql

set termout ON;
/* Executing portal_insert_default_ref_data_ora.sql (Step 5 of 5) */
/* This Script inserts default reference data into config,features, content and tax years  */
set termout OFF;
/*@@portal_insert_default_ref_data_ora.sql */

set termout ON;

/**
* PCU Version V1.0 Script Execution Complete.
* Detailed Script Logs have been generated 
* Files beginning with LOG_* can be found in the current script execution directory.
*/
quit;
