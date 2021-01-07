#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/toys_root
cd $HOME/labs/PDB

$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/drop_toys_create_toys_root.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @/home/oracle/labs/PDB/create_toys_app.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@toys_root as sysdba" @/home/oracle/labs/PDB/create_robots_dolls.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@robots as sysdba" @/home/oracle/labs/PDB/populate_robots.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/PDB/open_pdb1.sql


