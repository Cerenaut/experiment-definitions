cmd="python run-framework.py 
--step_remote aws 
--exps_file experiments-phase2.json 
--step_sync 
--step_sync_s3_prefix $prefix 
--step_compute 
--step_shutdown 
--step_export_compute 
--step_upload 
--amiid ami-17211d74 
--ami_ram 18 
--port 8491 
--ssh_keypath /home/tomcat/.ssh/ecsv2"


./runexp.sh $AGI_EXP_HOME "$cmd" 5 4 