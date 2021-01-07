set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app begin install '1.0';
create user toys_owner identified by Welcome_1 container=all;
grant create session, dba to toys_owner;

create table toys_owner.sales_data sharing=metadata 
(year       number(4),
 region     varchar2(10),
 quarter    varchar2(4),
 revenue    number);
insert into toys_owner.sales_data values (2000, 'US','Q4',1);
insert into toys_owner.sales_data values (2000, 'FRANCE','Q3',2);
insert into toys_owner.sales_data values (2000, 'GERMANY','Q2',4);
insert into toys_owner.sales_data values (2000, 'UK','Q1',3);
commit;
ALTER TABLE toys_owner.sales_data ENABLE CONTAINERS_DEFAULT;
create table toys_owner.codes sharing=object 
(code  number(4), label varchar2(10));
insert into toys_owner.codes values (1,'Puppet');
insert into toys_owner.codes values (2,'Car');
commit;
ALTER TABLE toys_owner.codes ENABLE CONTAINERS_DEFAULT;
ALTER PLUGGABLE DATABASE APPLICATION toys_app end install '1.0';
exit