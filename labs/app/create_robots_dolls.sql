set echo on

ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/robots';
CREATE PLUGGABLE DATABASE robots ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT);
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/dolls';
CREATE PLUGGABLE DATABASE dolls ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT);

alter pluggable database robots  open;
alter pluggable database dolls   open;

ALTER PLUGGABLE DATABASE toys_root$seed  CLOSE;
ALTER PLUGGABLE DATABASE toys_root$seed  OPEN read only;
exit
