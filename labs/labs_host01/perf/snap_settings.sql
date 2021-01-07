set echo on
exec dbms_workload_repository.modify_snapshot_settings(INTERVAL => 10)
exit
