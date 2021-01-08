#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd /home/oracle/labs/perf
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/research
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/sales
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/accounting

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_hr.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @snap_settings.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @create_hr_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@hr_root as sysdba" @create_hr_app_full.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @alter_hr_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @script_sales_inventories.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @script_sales_orders.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @script_sales_order_items.sql

sqlldr oe/Welcome_1@sales control=/home/oracle/labs/perf/control_lineorder.ctl
sqlldr oe/Welcome_1@sales control=/home/oracle/labs/perf/control_supplier.ctl
sqlldr oe/Welcome_1@sales control=/home/oracle/labs/perf/control_customer.ctl

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @script_load_sales.sql

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @alter_hr_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @script_research_inventories.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @script_research_orders.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @script_research_order_items.sql

sqlldr oe/Welcome_1@research control=/home/oracle/labs/perf/control_lineorder.ctl
sqlldr oe/Welcome_1@research control=/home/oracle/labs/perf/control_supplier.ctl
sqlldr oe/Welcome_1@research control=/home/oracle/labs/perf/control_customer.ctl

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @script_load_research.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@accounting as sysdba" @alter_hr_app_sync.sql

