set echo on
create table toys_owner.new_tab sharing=metadata 
(col1       number(4),
 col2       number);
alter table toys_owner.new_tab enable containers_default;
