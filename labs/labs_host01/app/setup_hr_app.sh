#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/accounting
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/sales
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/research

cd $HOME/labs/app
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_hr_create_hr_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@hr_root as sysdba" @create_research_sales_accounting.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @alter_hr_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@accounting as sysdba" @alter_hr_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @alter_hr_app_sync.sql
