
source $VARIABLES_FILE

cmd="python run-framework.py
	--step_remote simple
	--exps_file experiments-phase2.json
	--step_sync
	--step_sync_s3_prefix 11111
	--step_compute
	--step_export_compute
	--step_upload
    --user incubator
	--host box.x.agi.io
	--port 8491
    --ssh_keypath /home/tomcat/.ssh/inc-box
	--remote_variables_file /home/incubator/agief-project/variables/variables-incbox.sh"

./runexp.sh $AGI_EXP_HOME "/Users/gideon/Development/ProjectAGI/AGIEF/run-framework/scripts/run-framework" "$cmd" 11111