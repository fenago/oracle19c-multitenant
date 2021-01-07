#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

rm -Rf /home/oracle/Safe_Database_Files
mkdir -p /home/oracle/Safe_Database_Files/ORCL

export NLS_DATE_FORMAT='DD-MM-YYYY HH:MI:SS'
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/BD
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @shutdown.sql

tar -czf /home/oracle/Safe_Database_Files/ORCL/db.tar.gz  /u02/app/oracle/oradata/ORCL

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @alter_toys.sql

$ORACLE_HOME/bin/rman target /  <<EOF
BACKUP DATABASE PLUS ARCHIVELOG;
EXIT
EOF
