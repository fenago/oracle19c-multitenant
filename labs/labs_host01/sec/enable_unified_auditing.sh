#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
echo "*******************************"
echo " Stopping listener "
echo "*******************************"
$ORACLE_HOME/bin/lsnrctl stop
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
cd /u01/app/oracle/product/18.1.0/dbhome_1/rdbms/lib
echo "*******************************************"
echo " Linking Oracle with Unified Auditing on "
echo "*******************************************"
make -f ins_rdbms.mk uniaud_on ioracle ORACLE_HOME=$ORACLE_HOME
echo "*******************************"
echo " Restarting listener "
echo "*******************************"
$ORACLE_HOME/bin/lsnrctl start
export ORACLE_SID=ORCL
cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @open_toys.sql
