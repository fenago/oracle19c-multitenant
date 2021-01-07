set echo on
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root';
CREATE PLUGGABLE DATABASE hr_root AS APPLICATION CONTAINER
  ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT)
        CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root';
alter PLUGGABLE DATABASE hr_root open;
exit
