set echo on
ALTER PLUGGABLE DATABASE toys_root OPEN;
ALTER PLUGGABLE DATABASE robots OPEN;
ALTER PLUGGABLE DATABASE dolls OPEN;
ALTER PLUGGABLE DATABASE pdb_orcl OPEN;
ALTER SYSTEM SET db_recovery_file_dest_size=18G SCOPE=both;
EXIT