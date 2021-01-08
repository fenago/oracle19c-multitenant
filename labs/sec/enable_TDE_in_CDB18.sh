#!/bin/sh
# use bash shell
#
export ORACLE_SID=CDB18
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH
rm -rf /u02/app/oracle/admin/CDB18/tde_wallet
mkdir -p /u02/app/oracle/admin/CDB18/tde_wallet
cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @set_TDE_in_CDB18.sql