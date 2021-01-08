#!/bin/sh
# use bash shell
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export PATH=$ORACLE_HOME/bin:$PATH
export ORACLE_SID=ORCL

cd $HOME/labs/PDB
echo "************************* "
echo "In  ORCL "
echo "************************* "
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_pdb_source_for_hotclone.sql

echo "************************* "
echo "In  CDB18 "
echo "************************* "
ORACLE_SID=CDB18; export ORACLE_SID
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_pdb_hotclone.sql

