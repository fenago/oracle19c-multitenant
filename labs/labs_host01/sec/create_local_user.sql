set echo on
CREATE USER l_user IDENTIFIED BY Welcome_1;
GRANT create session, create table, unlimited tablespace TO l_user;
EXIT