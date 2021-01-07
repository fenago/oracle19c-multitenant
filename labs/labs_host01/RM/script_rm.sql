CONNECT sys/Welcome_1@sales AS SYSDBA
set echo on
EXEC dbms_resource_manager.clear_pending_area()
EXEC dbms_resource_manager.create_pending_area()

EXEC dbms_resource_manager.delete_plan_directive('PGA_plan', 'Reporting_Users')
EXEC dbms_resource_manager.delete_plan('PGA_plan')

EXEC dbms_resource_manager.clear_pending_area()
EXEC dbms_resource_manager.create_pending_area()

EXEC dbms_resource_manager.delete_plan_directive('PGA_plan', 'Reporting_Users')
EXEC dbms_resource_manager.delete_plan('PGA_plan')

EXEC dbms_resource_manager.create_plan('PGA_plan', 'Plan PGA limit')

EXEC dbms_resource_manager.create_consumer_group('Reporting_Users')
EXEC dbms_resource_manager.set_consumer_group_mapping (-
    ATTRIBUTE      => DBMS_RESOURCE_MANAGER.ORACLE_USER, -
    VALUE          => 'OE', -
    CONSUMER_GROUP => 'Reporting_Users')

EXEC dbms_resource_manager.create_plan_directive('PGA_plan',  'OTHER_GROUPS', session_pga_limit => 200)
EXEC dbms_resource_manager.validate_pending_area()
EXEC dbms_resource_manager.submit_pending_area()

SELECT plan, group_or_subplan, session_pga_limit
FROM dba_rsrc_plan_directives
WHERE plan = 'PGA_PLAN';
