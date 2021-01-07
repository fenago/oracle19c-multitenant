CONNECT / AS SYSDBA
set echo on
EXEC DBMS_Resource_Manager.Clear_Pending_Area()
EXEC DBMS_Resource_Manager.Create_Pending_Area()
EXEC DBMS_Resource_Manager.Create_CDB_Plan('HR_plan', 'Plan profiles oriented')

exec DBMS_RESOURCE_MANAGER.DELETE_CDB_PROFILE_DIRECTIVE ('HR_plan','prof_high')
exec DBMS_RESOURCE_MANAGER.DELETE_CDB_PROFILE_DIRECTIVE ('HR_plan','prof_low')
exec DBMS_RESOURCE_MANAGER.CREATE_CDB_PROFILE_DIRECTIVE ('HR_plan','prof_high', shares => 4,UTILIZATION_LIMIT => 80, PARALLEL_SERVER_LIMIT => 4)
exec DBMS_RESOURCE_MANAGER.CREATE_CDB_PROFILE_DIRECTIVE ('HR_plan','prof_low', shares => 2,UTILIZATION_LIMIT => 50, PARALLEL_SERVER_LIMIT => 2)

EXEC DBMS_Resource_Manager.Validate_Pending_Area()
EXEC DBMS_Resource_Manager.Submit_Pending_Area()
alter system set cpu_count = 1;

