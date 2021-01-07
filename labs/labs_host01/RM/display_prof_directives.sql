set echo on
SELECT plan FROM cdb_cdb_rsrc_plans 
WHERE con_ID = 1 AND plan = 'HR_PLAN' 
ORDER BY 1;
SELECT plan, profile, shares, utilization_limit "CPU limit"
FROM   cdb_cdb_rsrc_plan_directives
WHERE  con_id = 1 AND plan = 'HR_PLAN'
ORDER BY 1, 2;
