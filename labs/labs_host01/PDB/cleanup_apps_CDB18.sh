#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_toys.sql

export ORACLE_SID=CDB18
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_toys_dev.sql

rm -rf /u02/app/oracle/oradata/CDB18/toys_root_dev
rm -rf /u02/app/oracle/oradata/ORCL/toys_root
