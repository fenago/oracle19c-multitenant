#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

mkdir -p /u02/app/oracle/oradata/CDB18/toys_rr/doodles

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=CDB18
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_rr as sysdba" @/home/oracle/labs/PDB/create_doodles.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@doodles as sysdba" @/home/oracle/labs/PDB/alter_toys_app_sync.sql
