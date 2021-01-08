#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/RF
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @create2_toys_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @alter_toys_app_sync.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @alter_toys_app_sync.sql

$ORACLE_HOME/bin/rman target /  <<EOF
backup pluggable database toys_root plus archivelog;
backup pluggable database dolls;
backup pluggable database robots;
EXIT
EOF


