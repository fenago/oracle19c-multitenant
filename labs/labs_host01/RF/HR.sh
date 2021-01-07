#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/admin/create_PDB1.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb1 as sysdba" @/home/oracle/labs/admin/hr_main.sql Welcome_1 system temp /tmp

$ORACLE_HOME/bin/rman target /  <<EOF
BACKUP PLUGGABLE DATABASE pdb1;
EXIT
EOF