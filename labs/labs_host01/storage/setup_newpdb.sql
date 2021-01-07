host mkdir -p /u02/app/oracle/oradata/ORCL/newpdb
CONNECT / AS SYSDBA
set echo on
ALTER PLUGGABLE DATABASE newpdb CLOSE ;
DROP PLUGGABLE DATABASE newpdb INCLUDING DATAFILES;
CREATE PLUGGABLE DATABASE newpdb ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT)
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/newpdb';
alter PLUGGABLE DATABASE newpdb open;
CONNECT system/Welcome_1@newpdb
set echo on
SELECT property_name, property_value 
FROM database_properties
WHERE property_name LIKE 'DEFAULT_%TABLE%';
