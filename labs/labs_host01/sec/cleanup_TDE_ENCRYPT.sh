#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=CDB18
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@CDB18 as sysdba" @drop_pdb_encrypt.sql
