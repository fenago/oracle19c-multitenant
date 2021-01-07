set echo on
startup
alter system set db_recovery_file_dest_size=30G scope=both;
alter pluggable database all open;
exit
