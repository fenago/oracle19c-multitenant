#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
echo '' > /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo set pages 100 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set lines 68 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set tab off >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo SET HISTORY ON >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_ID format 99999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_NAME format a14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col NAME format A20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_id  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "CID"  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col username format A24 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ROOT format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_seed format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_pdb format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_root_conid format 99999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_name format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ID format 999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_CAPTURE_SERVICE format A14  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_NAME format A18 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_value  format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col role format a30 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col grantee format A18 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col granted_role format A18 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col common format A6 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col privilege format a20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL profile format A7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL resource_name format A26 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL limit format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL owner format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL object_name format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL object_owner format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL sharing format A13 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL PROFILE_NAME format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL RULE format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL CLAUSE format A20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL STATUS format A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL user_name FORMAT A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL policy_name FORMAT A16  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL entity_name FORMAT A11  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col dbusername format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col action_name format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col system_privilege_used FORMAT A16 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col object_privileges FORMAT A17 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col object_name format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col unified_audit_policies format A16 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col audit_option format A16 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col WRL_PARAMETER format A38  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col WRL_type format A8  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col WALLET_type format A8  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col WALLET format A8  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PARAMETER format A22  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col VALUE format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CONTAINER_MAP format A13  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CONTAINER_NAME format A14  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "C_NAME" format A8  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CONTAINERS_DEFAULT format A18  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "Def_Att" format a7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "All_Cont"  format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col container_map_object format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col table_name format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col table format A9  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col realm_name format A16  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col object_type format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col name format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col key_id format A52  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col KEY_USE format A10  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col ACTIVATING_DBNAME format A17  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col ACTIVATING_PDBNAME format A18  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_NAME format A10  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_VERSION format A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_VERS format A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col command format a28 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col VIOLATION_TYPE format a16 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL pdb_name format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql