#!/bin/sh
# use bash shell
# 

export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @cleanup_HR_ROOT.sql

rm -rf /u02/app/oracle/oradata/ORCL/hr_root