#!/bin/sh
# use bash shell
# 

export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @$HOME/labs/admin/cleanup_PDBs.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @$HOME/labs/admin/create_PDB1.sql

rm -rf /u02/app/oracle/admin/ORCL/tde_wallet

