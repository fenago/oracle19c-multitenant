set echo on
!mkdir /u02/app/oracle/oradata/ORCL/toys_root/robots
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/robots';
CREATE PLUGGABLE DATABASE robots ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT);

!mkdir /u02/app/oracle/oradata/ORCL/toys_root/dolls
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/dolls';
CREATE PLUGGABLE DATABASE dolls ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT);

alter pluggable database robots  open;
alter pluggable database dolls   open;
exit
