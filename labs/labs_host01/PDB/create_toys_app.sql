set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app begin install '1.0';

create user toys_owner identified by Welcome_1 container=all;
grant create session, dba to toys_owner;
create table toys_owner.sales_data sharing=metadata 
(year       number(4),
 region     varchar2(10),
 quarter    varchar2(4),
 revenue    number);
 
create table toys_owner.codes sharing=object 
(code  number(4), label varchar2(10));
insert into toys_owner.codes values (1,'Puppet');
insert into toys_owner.codes values (2,'Car');
commit;

ALTER PLUGGABLE DATABASE APPLICATION toys_app end install '1.0';

!mkdir /u02/app/oracle/oradata/ORCL/toys_root/toys_SEED
ALTER SESSION SET DB_CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/toys_SEED';
CREATE PLUGGABLE DATABASE as seed ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT)
 CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/toys_SEED';
alter pluggable database toys_root$seed  open;
alter session set container=toys_root$seed;
@$HOME/labs/PDB/alter_toys_app_sync.sql
exit