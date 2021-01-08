#!/bin/sh
# use bash shell
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
export PATH=$ORACLE_HOME/bin:$PATH

mkdir -p /u02/app/oracle/oradata/ORCL/pdb_source_for_hotclone

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/create_pdb_source_for_hotclone.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb_source_for_hotclone as sysdba" @/home/oracle/labs/PDB/create_source_user_bigtab.sql

ORACLE_SID=CDB18; export ORACLE_SID
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_pdb_hotclone.sql

rm -rf /u02/app/oracle/oradata/CDB18/hotclone
