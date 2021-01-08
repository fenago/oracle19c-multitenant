#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/mgt
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @close_test.sql

export ORACLE_SID=CDB18
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @close_test.sql
