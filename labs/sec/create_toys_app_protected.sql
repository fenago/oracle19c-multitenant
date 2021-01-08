set echo on

alter pluggable database application toys_app begin install '1.0';

create user toys_owner identified by Welcome_1 container=all;
grant create session, dba to toys_owner;
alter user toys_owner set container_data=all container=current;
create user test identified by Welcome_1 container=all;
grant create session, select any table, select any dictionary to test container=all;

create table toys_owner.sales_data sharing=Metadata 
(year       number(4),
 region     varchar2(10),
 quarter    varchar2(4),
 revenue    number);
 
create table toys_owner.codes sharing=object 
(code  number(4), label varchar2(10));
insert into toys_owner.codes values (1,'Puppet');
insert into toys_owner.codes values (2,'Car');
commit;

alter pluggable database application toys_app end install '1.0';

create pluggable database robots admin user admin identified by Welcome_1
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/robots';
alter pluggable database robots open restricted;
insert into toys_owner.sales_data values (2000, 'US','Q4',1);
insert into toys_owner.sales_data values (2000, 'FRANCE','Q3',2);
commit;

create pluggable database dolls admin user admin identified by Welcome_1
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/toys_root/dolls';
alter pluggable database dolls open restricted;
insert into toys_owner.sales_data values (2000, 'GERMANY','Q2',4);
insert into toys_owner.sales_data values (2000, 'UK','Q1',3);
commit;
exit
