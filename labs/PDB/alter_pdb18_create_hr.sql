set echo on

ALTER PLUGGABLE DATABASE pdb18 close;
ALTER PLUGGABLE DATABASE pdb18 open;
ALTER PLUGGABLE DATABASE hr_root close;
DROP PLUGGABLE DATABASE operations INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE research INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE sales INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE accounting INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE hr_root INCLUDING DATAFILES;

!mkdir /u02/app/oracle/oradata/CDB18/hr_root
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/CDB18/hr_root';
CREATE PLUGGABLE DATABASE hr_root AS APPLICATION CONTAINER
  ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT)
   CREATE_FILE_DEST='/u02/app/oracle/oradata/CDB18/hr_root';
alter PLUGGABLE DATABASE hr_root open;
exit