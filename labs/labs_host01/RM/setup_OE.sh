#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd /home/oracle/labs/RM
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/research
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/sales

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_hr.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @create_hr_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@hr_root as sysdba" @create_hr_app_full.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@sales as sysdba" @alter_hr_app_sync.sql

sqlldr oe/Welcome_1@sales control=/home/oracle/labs/RM/control_lineorder.ctl

$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@research as sysdba" @alter_hr_app_sync.sql
sqlldr oe/Welcome_1@research control=/home/oracle/labs/RM/control_lineorder.ctl
