#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#
export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/sec
$ORACLE_HOME/bin/sqlplus "sec_admin/Welcome_1@toys_root" @delete_realm.sql
$ORACLE_HOME/bin/sqlplus "sec_admin/Welcome_1@toys_root" @disable_DV.sql
$ORACLE_HOME/bin/sqlplus "sec_admin/Welcome_1@robots" @disable_DV.sql
$ORACLE_HOME/bin/sqlplus "sec_admin/Welcome_1@dolls" @disable_DV.sql
$ORACLE_HOME/bin/sqlplus "sec_admin/Welcome_1@toys_root" @delete_realm.sql
$ORACLE_HOME/bin/sqlplus "c##sec_admin/Welcome_1@ORCL" @disable_DV.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @shutdown.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @startup.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @open_pdbs.sql
