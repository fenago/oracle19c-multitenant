#!/bin/sh
# use bash shell
# 

export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

cd $HOME/labs/RF
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_PDB1.sql

export ORACLE_SID=CDB18
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_PDB1_IN_CDB18.sql

