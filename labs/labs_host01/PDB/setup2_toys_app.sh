#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root/robots
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root/dolls

cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create2_toys_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create_robots_dolls.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @alter_toys_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @alter_toys_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @populate2_robots.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @populate2_dolls.sql
