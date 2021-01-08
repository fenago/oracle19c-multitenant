set echo on
insert /*+ append */ into oe.supplier select S_SUPPKEY + 16008, S_NAME, S_ADDRESS, S_CITY , S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;	
insert /*+ append */ into oe.supplier select S_SUPPKEY + 32016, S_NAME, S_ADDRESS, S_CITY , S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;
insert /*+ append */ into oe.supplier select S_SUPPKEY + 64032, S_NAME, S_ADDRESS, S_CITY , S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;
insert  /*+ append */ into oe.customer select C_CUSTKEY+240008, C_NAME ,C_ADDRESS, C_CITY , C_NATION, C_REGION,C_PHONE,C_MKTSEGMENT	from oe.customer;
commit;
insert  /*+ append */ into oe.customer select C_CUSTKEY+960032, C_NAME ,C_ADDRESS, C_CITY , C_NATION, C_REGION,C_PHONE,C_MKTSEGMENT	from oe.customer;
commit;
insert /*+ append */ into oe.lineorder select 
LO_ORDERKEY	+120000010,  LO_LINENUMBER	,
 LO_CUSTKEY	+ 19,  LO_PARTKEY	+121,
 LO_SUPPKEY	+223,  LO_ORDERDATE + 211,
 LO_ORDERPRIORITY		,  LO_SHIPPRIORITY	,  LO_QUANTITY	,
 LO_EXTENDEDPRICE	,  LO_ORDTOTALPRICE,  LO_DISCOUNT	,
 LO_REVENUE  *  315	,  LO_SUPPLYCOST * 21	,  LO_TAX +315,
 LO_COMMITDATE + 277		,  LO_SHIPMODE		
 from oe.lineorder;
commit;
insert /*+ append */ into oe.lineorder select 
  LO_ORDERKEY	+3456 ,  LO_LINENUMBER	,
  LO_CUSTKEY	+ 23,  LO_PARTKEY	+212,
  LO_SUPPKEY	+2 ,  LO_ORDERDATE +33,
  LO_ORDERPRIORITY		,  LO_SHIPPRIORITY	,  LO_QUANTITY	,
  LO_EXTENDEDPRICE	,  LO_ORDTOTALPRICE,  LO_DISCOUNT	,
  LO_REVENUE  *  3,  LO_SUPPLYCOST *11,  LO_TAX +213,
  LO_COMMITDATE +  97	,  LO_SHIPMODE		
  from oe.lineorder;
commit;
insert into oe.lineorder select * from oe.lineorder;
insert into oe.lineorder select * from oe.lineorder;
commit;
exit
