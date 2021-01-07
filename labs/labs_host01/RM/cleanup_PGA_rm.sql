set echo on
ALTER SYSTEM SET resource_manager_plan='';
EXEC dbms_resource_manager.clear_pending_area()
EXEC dbms_resource_manager.create_pending_area()
EXEC dbms_resource_manager.delete_plan_directive('PGA_plan', 'Reporting_Users')
EXEC dbms_resource_manager.delete_plan_directive('PGA_plan', 'OTHER_GROUPS')
EXEC dbms_resource_manager.delete_consumer_group('Reporting_Users')
EXEC dbms_resource_manager.delete_plan('PGA_plan')
EXEC dbms_resource_manager.validate_pending_area()
EXEC dbms_resource_manager.submit_pending_area()
exit
