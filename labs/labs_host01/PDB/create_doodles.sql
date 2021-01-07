set echo on
ALTER PLUGGABLE DATABASE doodles CLOSE ;
DROP PLUGGABLE DATABASE doodles INCLUDING DATAFILES;
alter session set db_create_file_dest='/u02/app/oracle/oradata/CDB18/toys_rr/doodles';
CREATE PLUGGABLE DATABASE doodles ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT);
alter PLUGGABLE DATABASE doodles open;
exit
