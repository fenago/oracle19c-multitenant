set echo on
DROP PUBLIC DATABASE LINK link_CDB18;
CREATE PUBLIC DATABASE LINK link_CDB18
       CONNECT TO system IDENTIFIED BY Welcome_1
       USING 'CDB18';
EXIT
