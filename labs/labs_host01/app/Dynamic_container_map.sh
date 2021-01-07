#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/accounting
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/sales
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/research
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/devt
mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/administration

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/admin/create_PDB1.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/app/create_container_map.sql
