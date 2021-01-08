set echo on
ALTER PLUGGABLE DATABASE OPEN;
CREATE TABLESPACE ldata DATAFILE '/u02/app/oracle/oradata/ORCL/pdb1/ldata01.dbf' SIZE 10M;
CREATE TABLE system.bigtab (label VARCHAR2(50)) tablespace ldata;
INSERT INTO system.bigtab VALUES ('DATA FROM system.bigtab ON TABLESPACE ldata');
COMMIT;
EXIT