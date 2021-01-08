#!/bin/sh
# use bash shell
#

echo '' > /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo set pages 100 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo set tab off >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo set lines 68 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col CID format 999 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col name format A20 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col pdb_name format A12 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col PROPERTY_NAME format A18 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col PROPERTY_value  format A14 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col COMP_NAME  format A38 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col STATUS  format A12 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql
echo col VERSION  format A12 >> /u01/app/oracle/product/12.1.0/dbhome_1/sqlplus/admin/glogin.sql

echo '' > /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo set pages 100 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo set tab off >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo set lines 68 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col CID format 999 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col name format A20 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col pdb_name format A12 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col PROPERTY_NAME format A18 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col PROPERTY_value  format A14 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col COMP_NAME  format A30 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col STATUS  format A12 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
echo col VERSION  format A12 >> /u01/app/oracle/product/19.3.0/dbhome_1/sqlplus/admin/glogin.sql
