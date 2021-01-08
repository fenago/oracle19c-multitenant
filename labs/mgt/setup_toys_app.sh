#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root
cd $HOME/labs/mgt
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create_toys_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create_robots_dolls.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @alter_toys_app_sync
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @alter_toys_app_sync
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @populate_robots.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @open_pdb1.sql


