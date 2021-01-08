#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_toys.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_hr.sql

rm -rf /u02/app/oracle/oradata/ORCL/hr_root
rm -rf /u02/app/oracle/oradata/ORCL/toys_root
