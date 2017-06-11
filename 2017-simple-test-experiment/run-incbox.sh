#!/bin/bash

source $VARIABLES_FILE


cmd="python run-framework.py
	--step_remote simple
	--exps_file experiments-phase1.json
	--step_sync
	--step_compute
    --user incubator
	--host 192.168.1.100
	--port 8491
    --ssh_keypath ~/.ssh/inc-box
	--remote_variables_file /home/incubator/agief-project/variables/variables-incbox.sh"

echo $cmd

cd /Users/gideon/Development/ProjectAGI/AGIEF/run-framework/scripts/run-framework
eval $cmd


exit


# example of expanding a variable in a string

var=5
cmd="blah and \$var"
c=`eval echo $cmd`
echo $c
