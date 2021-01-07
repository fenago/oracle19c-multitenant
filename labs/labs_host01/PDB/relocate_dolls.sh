#!/bin/sh
# use bash shell
#
# Written by:  Dominique Jeunot
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
export PATH=$ORACLE_HOME/bin:$PATH

rm -rf /u02/app/oracle/oradata/CDB18/toys_rr/dolls
mkdir /u02/app/oracle/oradata/CDB18/toys_rr/dolls 
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @link_CDB18.sql

export ORACLE_SID=CDB18
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @link_ORCL.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_rr as sysdba" @link2_ORCL.sql
