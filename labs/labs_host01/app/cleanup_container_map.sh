#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
# 

export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH

cd $HOME/labs/app
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/app/cleanup_HR_ROOT.sql
