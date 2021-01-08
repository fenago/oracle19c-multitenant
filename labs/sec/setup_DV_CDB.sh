#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root/robots
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root/dolls
cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_create_user_sec_admin.sql
$ORACLE_HOME/bin/sqlplus "c##sec_admin/Welcome_1@ORCL" @enable_DV_strict.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @shutdown.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create_toys_app_protected.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @alter_toys_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @alter_toys_app_sync.sql
