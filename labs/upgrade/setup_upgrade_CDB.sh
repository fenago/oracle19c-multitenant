#!/bin/sh
# use bash shell
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/12.2.0/dbhome_1  
export ORACLE_SID=cdb12
PATH=$ORACLE_HOME/bin:$PATH; export PATH
export NLS_DATE_FORMAT='DD-MM-YYYY HH:MI:SS'
mkdir -p /u02/app/oracle/oradata/cdb12/pdb1_1
mkdir -p /u02/app/oracle/oradata/cdb12/pdb1_2
cd $HOME/labs/upgrade
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@cdb12 as sysdba" @create_pdb1_1_pdb1_2.sql
$ORACLE_HOME/bin/sqlplus "system/Welcome_1@pdb1_1" @create_user_table_pdb1_1.sql
$ORACLE_HOME/bin/sqlplus "system/Welcome_1@pdb1_2" @create_user_table_pdb1_2.sql
