set echo on
ALTER PLUGGABLE DATABASE pdb_source_for_hotclone close;
DROP PLUGGABLE DATABASE pdb_source_for_hotclone INCLUDING DATAFILES;

ALTER SESSION SET db_create_file_dest='/u02/app/oracle/oradata/ORCL/pdb_source_for_hotclone';
CREATE PLUGGABLE DATABASE pdb_source_for_hotclone 
    ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT)
	  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/pdb_source_for_hotclone';
ALTER PLUGGABLE DATABASE pdb_source_for_hotclone open;
exit
