set echo on
create user pdb1_2_user identified by oracle_4U;
grant dba to pdb1_2_user;
create table pdb1_2_user.smalltab (label varchar2(30));
begin
for i in 1..10 loop
insert into pdb1_2_user.smalltab values ('DATA FROM source_user.smalltab');
commit;
end loop;
end;
/
exit