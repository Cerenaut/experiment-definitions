#!/bin/bash

source $VARIABLES_FILE

prefixes=(170406-1606 170406-1607)

prefixes=`cat prefix.txt`

cmd="python run-framework.py
	--step_remote simple
	--exps_file experiments-phase2.json
	--step_sync
	--step_sync_s3_prefix \$prefix
	--step_compute
	--step_export_compute
	--step_upload
    --user incubator
	--host box.x.agi.io
	--port 8491
    --ssh_keypath /home/tomcat/.ssh/inc-box
	--remote_variables_file /home/incubator/agief-project/variables/variables-incbox.sh"

./runexp.sh $AGI_EXP_HOME "/Users/gideon/Development/ProjectAGI/AGIEF/run-framework/scripts/run-framework" "$cmd" $prefixes # ${prefixes[*]}


exit


# example of expanding a variable in a string

var=5
cmd="blah and \$var"
c=`eval echo $cmd`
echo $c
