#!/bin/sh
# use bash shell
#
export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@pdb1 as sysdba" @/home/oracle/labs/admin/hr_main.sql Welcome_1 system temp /tmp

export ORACLE_SID=CDB18
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/BD/startup.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/BD/drop_pdb1_in_cdb18.sql