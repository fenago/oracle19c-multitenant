conn sys/Welcome_1@toys_root as sysdba
set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app BEGIN UPGRADE '1.7' TO '1.8';
GRANT select any table TO toys_test2;
ALTER PLUGGABLE DATABASE APPLICATION toys_app END UPGRADE TO '1.8';
CONNECT sys/Welcome_1@robots as sysdba
set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app SYNC;
CONNECT sys/Welcome_1@dolls as sysdba
set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app SYNC;
CONNECT sys/Welcome_1@doodles as sysdba
set echo on
ALTER PLUGGABLE DATABASE APPLICATION toys_app SYNC;
