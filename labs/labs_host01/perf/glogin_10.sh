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
echo col PDB_NAME format a10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col NAME format A30 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col OBJECT_NAME format A30 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col SEGMENT_NAME format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL column_name FORMAT A24 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_NAME format A8 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col con_id  format 999 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col TABLE_NAME format A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col application format A12 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col owner format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col plan format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col profile format A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL username FORMAT A22 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_NAME format A40 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col PROPERTY_VALUE format A20  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CDB\$NAME FORMAT A10 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col CON\$NAME FORMAT A10  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "IS_PROXY_PDB" format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col name format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col "MEMBER_CDB" format A12  >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo col department_name FORMAT A20 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL PROFILE_NAME format A17 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL RULE format A24 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL CLAUSE format A18 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL STATUS format A7 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL partition_name format A14 >> $ORACLE_HOME/sqlplus/admin/glogin.sql
echo COL high_value format A30 >> $ORACLE_HOME/sqlplus/admin/glogin.sql


