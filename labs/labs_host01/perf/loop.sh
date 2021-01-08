#!/bin/sh
# use bash shell
#

export ORACLE_HOME=/u01/app/oracle/product/19.3.0/dbhome_1
export ORACLE_SID=ORCL
PATH=$ORACLE_HOME/bin:$PATH; export PATH
a=0

while [ $a -lt 10000 ]
do
$ORACLE_HOME/bin/sqlplus -s /nolog  <<EOF
CONNECT oe/Welcome_1@sales
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql

CONNECT oe/Welcome_1@research
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
start $HOME/labs/perf/loop.sql
EXIT
EOF
if [ $a -eq  10000 ]
   then
      break
   fi
   a=`expr $a + 1`
done
