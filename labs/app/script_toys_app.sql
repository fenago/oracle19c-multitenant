set echo on 
create tablespace toys_tbs datafile size 100M autoextend on next 10M maxsize 200M;
create user toys_owner identified by Welcome_1 container=all;
grant create session, dba to toys_owner;
alter user toys_owner default tablespace toys_tbs;
create table toys_owner.sales_data sharing=metadata 
(year       number(4),
 region     varchar2(10),
 quarter    varchar2(4),
 revenue    number);
