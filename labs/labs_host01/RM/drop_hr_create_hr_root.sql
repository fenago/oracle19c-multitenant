set echo on
HOST mkdir -p /u02/app/oracle/oradata/ORCL/hr_root
ALTER PLUGGABLE DATABASE HR_root CLOSE IMMEDIATE;
DROP PLUGGABLE DATABASE operations INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE research INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE accounting INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE sales INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE HR_root INCLUDING DATAFILES;
ALTER SESSION SET db_create_file_dest='/u02/app/oracle/oradata/ORCL/hr_root'; 
create pluggable database hr_root AS APPLICATION CONTAINER
  admin user admin identified by Welcome_1
  create_file_dest='/u02/app/oracle/oradata/ORCL/hr_root'; 
alter pluggable database hr_root open;
exit