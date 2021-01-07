#!/bin/sh
# setup the databse for the worload and start the workload
# the load value determines the number of processes that will run.
# for a load that will show the performance pages use 2 or 4.
# Adjust if the load is too heavy. 

# this workload runs until the runload file is removed from the directory 
# where these workload scripts reside.

#USAGE: start_workload.sh <loadFactor> 

loadfactor=$1
service=$2
syspw=Welcome_1

if [[ $# = 0 ]]; then
	echo "Usage: start_workload.sh <load_value> <serviceName> "
	echo "Where load_value is a number"
	echo "where serviceName is the Net Service Name of database"
	exit
fi

./order_app_load.sh $loadfactor $service
