#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/sales

cd $HOME/labs/upgrade
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_hr_create_hr_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@hr_root as sysdba" @create_sales.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @alter_hr_app_sync.sql
