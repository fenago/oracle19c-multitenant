set echo on
CONNECT sys/Welcome_1@operations AS SYSDBA
ALTER PLUGGABLE DATABASE APPLICATION hr_app SYNC;
CONNECT sys/Welcome_1@sales AS SYSDBA
ALTER PLUGGABLE DATABASE APPLICATION hr_app SYNC;
exit