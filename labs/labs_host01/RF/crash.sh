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
cd $HOME/labs/RF

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/RF/drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @/home/oracle/labs/RF/create_toys_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @/home/oracle/labs/RF/create_robots_dolls.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @/home/oracle/labs/RF/script_populate.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@dolls as sysdba" @/home/oracle/labs/RF/script_populate2.sql
$ORACLE_HOME/bin/rman target /  <<EOF
BACKUP DATABASE PLUS ARCHIVELOG;
EXIT
EOF

rm /u02/app/oracle/oradata/ORCL/pdb1/ORCL/*/*/*system*.dbf
rm /u02/app/oracle/oradata/ORCL/toys_root/*system*.dbf
rm /u02/app/oracle/oradata/ORCL/toys_root/ORCL/*/*/*system*.dbf
