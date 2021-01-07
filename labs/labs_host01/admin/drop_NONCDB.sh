#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/12.2.0/dbhome_1
export ORACLE_SID=NONCDB
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/admin
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @shutdown_NONCDB.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup_NONCDB.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_NONCDB.sql

rm -rf /u02/app/oracle/oradata/NONCDB
rm -rf /u01/app/oracle/admin/NONCDB
rm -rf /u03/app/oracle/fast_recovery_area/NONCDB
rm -rf /u01/app/oracle/admin/NONCDB
rm -rf /u01/app/oracle/audit/NONCDB
rm -rf /u01/app/oracle/diag/rdbms/noncdb
rm -rf /u01/app/oracle/oradata/NONCDB
rm -rf /u02/app/oracle/oradata/NONCDB
rm -rf /u04/app/oracle/redo/NONCDB
rm -rf /u02/app/oracle/admin/NONCDB
