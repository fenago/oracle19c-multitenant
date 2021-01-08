#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/RF
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb1 as sysdba" @/home/oracle/labs/RF/create_ldatatbs.sql
$ORACLE_HOME/bin/rman target /  <<EOF
BACKUP PLUGGABLE DATABASE PDB1;
EXIT
EOF
