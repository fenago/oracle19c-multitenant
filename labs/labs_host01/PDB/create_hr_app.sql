set echo on
ALTER PLUGGABLE DATABASE APPLICATION hr_app begin install '1.0';
create user hr_mgr identified by Welcome_1 container=all;
grant create session, dba to hr_mgr container=all;

CREATE TABLE hr_mgr.mgr_tab sharing=METADATA
   (NO NUMBER(4), MGR_NAME VARCHAR2(10), JOB VARCHAR2(9), MGR NUMBER(4),
    HIREDATE DATE, SALARY NUMBER(7,2), MGMT_LEVEL VARCHAR2(8));
alter table hr_mgr.mgr_tab enable containers_default;

ALTER PLUGGABLE DATABASE APPLICATION hr_app end install '1.0';

!mkdir /u02/app/oracle/oradata/CDB18/hr_root/operations
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/CDB18/hr_root/operations';
CREATE PLUGGABLE DATABASE operations ADMIN USER admin IDENTIFIED BY Welcome_1  ROLES=(CONNECT)
    CREATE_FILE_DEST='/u02/app/oracle/oradata/CDB18/hr_root/operations';
alter pluggable database operations open;

exit