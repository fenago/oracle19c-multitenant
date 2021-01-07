set echo on
ALTER PLUGGABLE DATABASE hr_root,  sales, research OPEN;
select Name, Con_ID, Open_mode from v$PDBs order by 1;
alter system set cpu_count = 1;
select Name from v$Rsrc_Plan;
alter system set resource_manager_plan = '';
execute DBMS_Resource_Manager.Clear_Pending_Area();
execute DBMS_Resource_Manager.Create_Pending_Area();
execute DBMS_Resource_Manager.Delete_CDB_Plan_Directive('fairplan', 'sales');
execute DBMS_Resource_Manager.Delete_CDB_Plan_Directive('fairplan', 'research');
execute DBMS_Resource_Manager.Delete_CDB_Plan('fairplan');
execute DBMS_Resource_Manager.Delete_CDB_Plan_Directive('unfairplan', 'sales');
execute DBMS_Resource_Manager.Delete_CDB_Plan_Directive('unfairplan', 'research');
execute DBMS_Resource_Manager.Delete_CDB_Plan('unfairplan');
execute DBMS_Resource_Manager.Validate_Pending_Area();
execute DBMS_Resource_Manager.Submit_Pending_Area();
exit
