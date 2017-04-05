#!/bin/bash

prefixes=(
	170205-0625	
	170205-0641
	170205-0654
	170205-0709
	170205-0724
	170205-0740
	170205-1707

	170214-0539
	170214-0551
	170214-0602
	170214-0614
	170214-0626
	170214-0638

	170213-1315
	170213-1327
	170213-1338
	170213-1350
	170213-1401
	170213-1414

	170209-1238
	170209-1248
	170209-1258
	170209-1308
	170209-1316
	170209-1326)

i=0
for prefix in "${prefixes[@]}"
do
	let i++
	echo $i

	# replace prefix in experiments.json
	sed_string="sed -i.bak 's/PASTASAUCE/${prefix}/g' experiments-phase3.json"
	eval $sed_string

	# replace prefix in data.json
	sed_string="sed -i.bak 's/PASTASAUCE/${prefix}/g' ./input/data-phase3.json"
	eval $sed_string

	# execute command
	cmd="python $WORKSPACE/agi/bin/run/run-framework.py \
	--step_aws \
	--exps_file experiments-phase3.json \
	--step_sync \
	--step_sync_s3_prefix $prefix \
	--step_compute \
	--step_shutdown \
	--step_export_compute \
	--step_upload \
	--amiid ami-17211d74 \
	--ami_ram 16 \
	--port 8491 \
	--ec2_keypath /home/tomcat/.ssh/ecsv2"

	echo $cmd

	# restore the modified files
	cp experiments-phase3.json.bak experiments-phase3.json
	cp data-phase3.json.bak data-phase3.json
	
done
