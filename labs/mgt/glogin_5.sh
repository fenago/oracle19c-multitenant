#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
echo '' > /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo set pages 100 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set lines 68 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set tab off >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo SET HISTORY ON >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CID format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_ID format 99999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_NAME format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col NAME format A15 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_NAME format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col MEMBER format A40 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col file_name format A50 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col tablespace_name format A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col file_id format 9999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_id  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col username format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ROOT format a7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_seed format a7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_pdb format a7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_root_conid format 99999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_name format A14  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ID format 999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_VERSION format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_NAME format A18 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_value  format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROXY_PDB_SOURCE_PDB  format A26 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROXY_PDB_DBLINK  format A28 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col network_name format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CONTAINER_MAP format A13  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col container_map_object format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CONTAINERS_DEFAULT format A18  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col TABLE format A8  >> $ORACLE_HOME/sqlplus/admin/glogin.sql

