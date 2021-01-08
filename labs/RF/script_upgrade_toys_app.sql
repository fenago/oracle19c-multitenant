connect / as sysdba
set echo on
alter pluggable database all open;
connect sys/Welcome_1@toys_root as sysdba
set echo on
alter pluggable database application toys_app begin upgrade '1.0' to '1.1';
CREATE TABLE toys_owner.categories SHARING=OBJECT (c1 number, category varchar2(20));
INSERT INTO toys_owner.categories values (1,'GAMES');
INSERT INTO toys_owner.categories values (2,'PUPPETS');
INSERT INTO toys_owner.categories values (3,'VEHICLES');
commit;
alter pluggable database application toys_app end upgrade to '1.1';

connect sys/Welcome_1@robots as sysdba
set echo on
alter pluggable database application toys_app sync;

connect sys/Welcome_1@dolls as sysdba
set echo on
alter pluggable database application toys_app sync;
CONNECT / AS SYSDBA
ALTER SYSTEM SWITCH LOGFILE;
ALTER SYSTEM SWITCH LOGFILE;
ALTER SYSTEM SWITCH LOGFILE;

