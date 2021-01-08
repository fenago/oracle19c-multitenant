set echo on
alter pluggable database application hr_app begin install '1.0';
create user hr_mgr identified by Welcome_1 container=all;
grant create session, dba to hr_mgr container=all;
CREATE TABLE hr_mgr.mgr_tab sharing=METADATA
   (NO NUMBER(4), MGR_NAME VARCHAR2(10), JOB VARCHAR2(9), MGR NUMBER(4),
    HIREDATE DATE, SALARY NUMBER(7,2), MGMT_LEVEL VARCHAR2(8));

alter table hr_mgr.mgr_tab enable containers_default;

alter pluggable database application hr_app end install '1.0';
alter session set DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/operations';
create pluggable database operations admin user admin identified by admin
CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/operations';

alter pluggable database operations open;

alter session set DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/research';
create pluggable database RESEARCH admin user admin identified by admin
CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/research';

alter pluggable database RESEARCH open;
exit
