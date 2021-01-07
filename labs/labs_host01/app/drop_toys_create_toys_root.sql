set echo on
ALTER PLUGGABLE DATABASE toys_root CLOSE IMMEDIATE;
DROP PLUGGABLE DATABASE robots INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE dolls INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE doodles INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE toys_root$SEED INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE toys_root INCLUDING DATAFILES;
ALTER SESSION SET db_create_file_dest='/u02/app/oracle/oradata/ORCL/toys_root';
CREATE PLUGGABLE DATABASE toys_root AS APPLICATION CONTAINER
  ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT);
alter PLUGGABLE DATABASE toys_root open;
exit
