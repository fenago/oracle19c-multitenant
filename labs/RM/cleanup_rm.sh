#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/RM
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @cleanup_PGA_rm.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @cleanup_PGA_rm.sql
