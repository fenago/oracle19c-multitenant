#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
echo '' > /u01/app/oracle/product/18.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo set pages 100 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set lines 68 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo set tab off >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo SET HISTORY ON >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CID format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_ID format 99999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PDB_NAME format a8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col NAME format A30 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PLUGGABLE_DATABASE format A20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col SEGMENT_NAME format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_NAME format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_id  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col TABLE_NAME format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col application format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col owner format A6 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col plan format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col profile format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL sql_text format A24 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL index_name format A24 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL username format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL value format 999999999999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL name format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL plan format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL GROUP_OR_SUBPLAN format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL SESSION_PGA_LIMIT format 9999999999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL mview_name  format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL on_query_computation format A22  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL username FORMAT A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
