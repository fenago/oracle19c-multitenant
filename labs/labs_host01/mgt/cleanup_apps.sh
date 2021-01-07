#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/mgt
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_hr.sql

rm -rf /u02/app/oracle/oradata/ORCL/hr_root
rm -rf /u02/app/oracle/oradata/ORCL/toys_root
