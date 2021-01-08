#!/bin/sh
# use bash shell
# 

export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @$HOME/labs/upgrade/cleanup_PDBs.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @$HOME/labs/upgrade/create_PDB1.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb1 as sysdba" @/home/oracle/labs/admin/hr_main.sql Welcome_1 system temp /tmp

