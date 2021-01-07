#!/bin/sh
# use bash shell
#
# Written by: Dominique.Jeunot@oracle.com
#
export ORACLE_SID=ORCL
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH
rm -rf /u02/app/oracle/admin/ORCL/tde_wallet
mkdir -p /u02/app/oracle/admin/ORCL/tde_wallet
cp $HOME/labs/admin/sqlnet.ora $ORACLE_HOME/network/admin/sqlnet.ora
lsnrctl reload

cd $HOME/labs/BD
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @/home/oracle/labs/admin/create_PDB1.sql
$ORACLE_HOME/bin/sqlplus "/ as sysdba" @drop_toys_TDE.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@PDB1 as SYSDBA" @open_set_key.sql
$ORACLE_HOME/bin/sqlplus "sys/Welcome_1@PDB1 as SYSDBA" @tbspdb1_enc.sql



