#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#

export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
mkdir -p /u02/app/oracle/oradata/ORCL/pdb1
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @create_pdb1.sql
$ORACLE_HOME/bin/sqlplus "system/Welcome_1@pdb1" @drop_user_test.sql

rm /tmp/xmlfilepdb1.pdb
rm /tmp/pdb1.xml
