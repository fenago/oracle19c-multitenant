set termout off
CREATE TABLESPACE tbsorcl_enc 
       DATAFILE '/u02/app/oracle/oradata/ORCL/pdb1/tbsenc01.dbf' SIZE 10M
       ENCRYPTION USING 'AES256' ENCRYPT;
EXIT