set echo on

insert /*+ append */ into oe.supplier select S_SUPPKEY + 2001, S_NAME, S_ADDRESS, S_CITY ,  S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;	 
insert  /*+ append */ into oe.supplier select S_SUPPKEY + 4002, S_NAME, S_ADDRESS, S_CITY , S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;	 
insert  /*+ append */ into oe.supplier select S_SUPPKEY + 8004, S_NAME, S_ADDRESS, S_CITY , S_NATION, S_REGION	, S_PHONE from oe.supplier;
commit;	 

insert  /*+ append */ into oe.customer select C_CUSTKEY+30001, C_NAME ,C_ADDRESS, C_CITY , C_NATION, C_REGION,C_PHONE,C_MKTSEGMENT	from oe.customer;
commit;
insert  /*+ append */ into oe.customer select C_CUSTKEY+60002, C_NAME ,C_ADDRESS, C_CITY , C_NATION, C_REGION,C_PHONE,C_MKTSEGMENT	from oe.customer;
commit;
insert  /*+ append */ into oe.customer select C_CUSTKEY+120004, C_NAME ,C_ADDRESS, C_CITY , C_NATION, C_REGION,C_PHONE,C_MKTSEGMENT from oe.customer;
commit;

insert /*+ append */ into oe.lineorder select 
LO_ORDERKEY	+6000001,  LO_LINENUMBER	,
 LO_CUSTKEY	+ 120004,  LO_PARTKEY	+120004,
 LO_SUPPKEY	+64032,  LO_ORDERDATE + 100		,
 LO_ORDERPRIORITY		,  LO_SHIPPRIORITY	,  LO_QUANTITY	,
 LO_EXTENDEDPRICE	,  LO_ORDTOTALPRICE,  LO_DISCOUNT	,
 LO_REVENUE  *  10	,  LO_SUPPLYCOST * 100	,  LO_TAX 		+100,
 LO_COMMITDATE + 200		,  LO_SHIPMODE		
 from OE.lineorder;
commit;
insert /*+ append */ into oe.lineorder select 
LO_ORDERKEY	+12000001,  LO_LINENUMBER	,
 LO_CUSTKEY	+ 120004,  LO_PARTKEY	+420033,
 LO_SUPPKEY	+64032,  LO_ORDERDATE + 101		,
 LO_ORDERPRIORITY		,  LO_SHIPPRIORITY	,  LO_QUANTITY	,
 LO_EXTENDEDPRICE	,  LO_ORDTOTALPRICE,  LO_DISCOUNT	,
 LO_REVENUE  *  12	,  LO_SUPPLYCOST * 100	,  LO_TAX +323,
 LO_COMMITDATE + 400		,  LO_SHIPMODE		
 from oe.lineorder;
commit;
insert /*+ append */ into oe.lineorder select 
LO_ORDERKEY	+24000002,  LO_LINENUMBER	,
 LO_CUSTKEY	+ 11,  LO_PARTKEY	+33,
 LO_SUPPKEY	+21,  LO_ORDERDATE + 11		,
 LO_ORDERPRIORITY		,  LO_SHIPPRIORITY	,  LO_QUANTITY	,
 LO_EXTENDEDPRICE	,  LO_ORDTOTALPRICE,  LO_DISCOUNT	,
 LO_REVENUE  *  3	,  LO_SUPPLYCOST * 2	,  LO_TAX +33,
 LO_COMMITDATE + 2		,  LO_SHIPMODE		
 from oe.lineorder;
commit;
exit
