set echo on
ALTER PLUGGABLE DATABASE hr_root CLOSE IMMEDIATE;
DROP PLUGGABLE DATABASE sales INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE operations INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE research INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE ACCOUNTING INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE administration INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE devt INCLUDING DATAFILES;
DROP PLUGGABLE DATABASE hr_root INCLUDING DATAFILES;
exit



