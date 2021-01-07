#!/bin/sh
# use bash shell
#
# Written by:  Dominique Jeunot
#

export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=/u01/app/oracle/product/18.1.0/dbhome_1 
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH

cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "system/Welcome_1@pdb1" @/home/oracle/labs/PDB/test_bigtab.sql

