#!/bin/sh
# use bash shell
#
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=CDB18
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd /home/oracle/labs/admin

mkdir -p /u04/app/oracle/redo/CDB18

$ORACLE_HOME/bin/dbca -silent -deleteDatabase -sourceDB CDB18 -sid CDB18 -sysPassword Welcome_1
$ORACLE_HOME/bin/dbca -silent -createDatabase -templateName General_Purpose.dbc -gdbname CDB18 -sid CDB18 -createAsContainerDatabase true -numberOfPDBs 1 -pdbName PDB18 -useLocalUndoForPDBs true -responseFile NO_VALUE -characterSet AL32UTF8 -totalMemory 1800 -sysPassword Welcome_1 -systemPassword Welcome_1 -pdbAdminPassword Welcome_1 -emConfiguration DBEXPRESS -dbsnmpPassword Welcome_1 -emExpressPort 5502 -enableArchive true -recoveryAreaDestination /u03/app/oracle/fast_recovery_area -recoveryAreaSize 15000 -datafileDestination /u02/app/oracle/oradata

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/creation/redo_logs.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb18 as sysdba" @/home/oracle/labs/creation/profile.sql

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb18 as sysdba" @/home/oracle/labs/admin/hr_main.sql Welcome_1 users temp /tmp

exit