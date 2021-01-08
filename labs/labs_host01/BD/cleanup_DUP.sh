#!/bin/sh
# use bash shell
#
export ORACLE_SID=O_CLOUD
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

cd $HOME/labs/BD
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @shutdown.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup_mount.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_database.sql

rm -rf /u02/app/oracle/admin/O_CLOUD
rm -rf /u03/app/oracle/fast_recovery_area/O_CLOUD
rm -rf /u04/app/oracle/redo/O_CLOUD
rm -rf /u02/app/oracle/oradata/O_CLOUD
rm -rf /u01/app/oracle/admin/O_CLOUD
rm -rf /u03/app/oracle/fast_recovery_area/O_CLOUD
rm -rf /u01/app/oracle/admin/O_CLOUD
rm -rf /u01/app/oracle/audit/O_CLOUD
rm -rf /u01/app/oracle/diag/rdbms/o_cloud
rm -rf /u01/app/oracle/oradata/O_CLOUD
rm -rf /u02/app/oracle/oradata/O_CLOUD
rm -rf /u04/app/oracle/redo/O_CLOUD

export ORACLE_SID=ORCL
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/admin/create_PDB1.sql



