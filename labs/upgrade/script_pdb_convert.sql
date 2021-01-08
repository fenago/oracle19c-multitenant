host mkdir -p /u02/app/oracle/oradata/ORCL/hr_root/research
connect sys/Welcome_1@ORCL as sysdba
set echo on
ALTER PLUGGABLE DATABASE pdb18_in_root CLOSE;
ALTER PLUGGABLE DATABASE pdb18_in_root OPEN READ ONLY;
connect sys/Welcome_1@hr_root as sysdba
set echo on
alter session set db_create_file_dest='/u02/app/oracle/oradata/ORCL/hr_root/research';
CREATE PLUGGABLE DATABASE research FROM pdb18_in_root;
ALTER PLUGGABLE DATABASE research OPEN;
alter session set container= research;
ALTER TABLESPACE users READ WRITE;

@$ORACLE_HOME/rdbms/admin/pdb_to_apppdb
ALTER PLUGGABLE DATABASE APPLICATION hr_app SYNC;
CONNECT sys/Welcome_1@RESEARCH as sysdba
shutdown
startup
connect sys/Welcome_1@ORCL as sysdba
set echo on
ALTER PLUGGABLE DATABASE pdb18_in_root CLOSE;
DROP PLUGGABLE DATABASE pdb18_in_root INCLUDING DATAFILES;
