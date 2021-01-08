set echo on
CREATE PLUGGABLE DATABASE hr_root AS APPLICATION CONTAINER
  ADMIN USER admin IDENTIFIED BY oracle_4U  ROLES=(CONNECT)
        CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root';
alter PLUGGABLE DATABASE hr_root open;
exit
