#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/test
cd $HOME/labs/mgt
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_create_test.sql
$ORACLE_HOME/bin/sqlplus "system/Welcome_1@test" @drop_user_test.sql
