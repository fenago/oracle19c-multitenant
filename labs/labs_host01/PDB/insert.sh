#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
PATH=$ORACLE_HOME/bin:$PATH; export PATH
cd $HOME/labs/PDB
$ORACLE_HOME/bin/sqlplus "toys_owner/Welcome_1@robots" @/home/oracle/labs/PDB/populate_robots.sql
$ORACLE_HOME/bin/sqlplus "toys_owner/Welcome_1@doodles" @/home/oracle/labs/PDB/populate_doodles.sql

