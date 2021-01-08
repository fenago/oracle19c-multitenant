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
echo col PDB_NAME format a10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col NAME format A20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_id  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col username format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ROOT format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_seed format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_pdb format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_root_conid format 99999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_name format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_ID format 999999  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col APP_VERSION format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col common format A6 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL owner format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL object_name format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL user_name FORMAT A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
