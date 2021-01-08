set echo on
DROP PUBLIC DATABASE LINK link_ORCL;
CREATE PUBLIC DATABASE LINK link_ORCL
       CONNECT TO system IDENTIFIED BY Welcome_1
       USING 'ORCL';
ALTER session SET db_create_file_dest='/u02/app/oracle/oradata/CDB18/toys_rr/dolls';
CREATE PLUGGABLE DATABASE dolls FROM dolls@link_ORCL RELOCATE;
ALTER PLUGGABLE DATABASE dolls open;
exit

	   