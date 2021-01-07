#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=CDB18
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @alter_pdb18_create_hr.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@hr_root as sysdba" @create_hr_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@operations as sysdba" @alter_hr_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb18 as sysdba" @drop_user_test.sql

