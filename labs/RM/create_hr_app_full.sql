set echo on
alter pluggable database application hr_app begin install '1.0';
alter session set default_sharing=metadata;
drop user oe cascade;
create user oe identified by Welcome_1 container=all;
grant create session, dba to oe container=all;

drop table oe.lineorder;
create table oe.lineorder
(LO_ORDERKEY number,
LO_LINENUMBER number,
LO_CUSTKEY number,
LO_PARTKEY number,
LO_SUPPKEY number,
LO_ORDERDATE number,
LO_ORDERPRIORITY char(15),
LO_SHIPPRIORITY char(1),
LO_QUANTITY number,
LO_EXTENDEDPRICE number,
LO_ORDTOTALPRICE number,
LO_DISCOUNT number,
LO_REVENUE number,
LO_SUPPLYCOST number,
LO_TAX number,
LO_COMMITDATE number,
LO_SHIPMODE char(10) );

ALTER PLUGGABLE DATABASE APPLICATION hr_app end install '1.0';

CREATE PLUGGABLE DATABASE sales ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT)
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/sales';

CREATE PLUGGABLE DATABASE research ADMIN USER admin identified by Welcome_1 ROLES=(CONNECT)
  CREATE_FILE_DEST='/u02/app/oracle/oradata/ORCL/hr_root/research';

alter pluggable database sales open;
alter pluggable database research open;
exit
