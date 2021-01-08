set echo on
create or replace procedure Burn_CPU_For_RM_Demo authid Definer is
  Loops constant pls_integer := 10 * 100 * 1000 * 1000;

  w0 constant integer not null := DBMS_Utility.Get_Time();
  c0 constant integer not null := DBMS_Utility.Get_CPU_Time();
  c integer not null := 0;
  w integer not null := 0;
  k integer not null := 0;
begin
  for j in 1..Loops loop
    k := k + 1.5;
  end loop;
  c := DBMS_Utility.Get_CPU_Time() - c0;
  w := DBMS_Utility.Get_Time() - w0;
  DBMS_Output.Put_Line(
    'CPU:  '||To_Char(c/100.0, '999.9')||' '||
    'Wall: '||To_Char(w/100.0, '999.9')||' '||
    'k: '||k);
end Burn_CPU_For_RM_Demo;
/
