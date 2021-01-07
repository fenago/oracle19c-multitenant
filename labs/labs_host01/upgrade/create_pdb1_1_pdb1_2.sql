set echo on
alter PLUGGABLE DATABASE pdb1 close;
alter PLUGGABLE DATABASE pdb1_1 close;
alter PLUGGABLE DATABASE pdb1_2 close;
drop pluggable database pdb1 including datafiles;
drop pluggable database pdb1_1 including datafiles;
drop pluggable database pdb1_2 including datafiles;
CREATE PLUGGABLE DATABASE pdb1_1  
    ADMIN USER pdb1_1_admin IDENTIFIED BY oracle_4U  
    ROLES=(CONNECT)
    CREATE_FILE_DEST='/u02/app/oracle/oradata/cdb12/pdb1_1';
	
CREATE PLUGGABLE DATABASE pdb1_2  
    ADMIN USER pdb1_2_admin IDENTIFIED BY oracle_4U  
    ROLES=(CONNECT)
   CREATE_FILE_DEST='/u02/app/oracle/oradata/cdb12/pdb1_2';
	
ALTER PLUGGABLE DATABASE pdb1_1 open;
ALTER PLUGGABLE DATABASE pdb1_2 open;
exit