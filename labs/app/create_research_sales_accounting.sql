set echo on
alter pluggable database application hr_app begin install '1.0';
create user hr_mgr identified by Welcome_1 container=all;
grant create session, dba to hr_mgr container=all;

drop user scott cascade;
create user scott identified by Welcome_1 container=all;
grant create session, dba to scott container=all;
CREATE TABLE scott.DEPT sharing=METADATA
   (DEPTNO NUMBER(2) CONSTRAINT PK_DEPT PRIMARY KEY,
	DNAME VARCHAR2(14) ,
	LOC VARCHAR2(13) ) ;

CREATE TABLE scott.EMP sharing=METADATA
   (EMPNO NUMBER(4) CONSTRAINT PK_EMP PRIMARY KEY,
	ENAME VARCHAR2(10),
	JOB VARCHAR2(9),
	MGR NUMBER(4),
	HIREDATE DATE,
	SAL NUMBER(7,2),
	COMM NUMBER(7,2),
	DEPTNO NUMBER(2) CONSTRAINT FK_DEPTNO REFERENCES SCOTT.DEPT);

CREATE TABLE hr_mgr.mgr_tab sharing=METADATA
   (NO NUMBER(4), MGR_NAME VARCHAR2(10), JOB VARCHAR2(9), MGR NUMBER(4),
    HIREDATE DATE, SALARY NUMBER(7,2), MGMT_LEVEL VARCHAR2(8));

alter table hr_mgr.mgr_tab enable containers_default;
alter pluggable database application hr_app end install '1.0';
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/sales';
create pluggable database SALES admin user admin identified by Welcome_1
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/sales';

alter pluggable database sales open;
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/accounting';
create pluggable database ACCOUNTING admin user admin identified by Welcome_1
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/accounting';
alter pluggable database accounting open;

ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/research';
create pluggable database RESEARCH admin user admin identified by Welcome_1
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/research' ;
alter pluggable database research open;

exit
