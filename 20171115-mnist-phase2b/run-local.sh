#!/bin/bash

source $VARIABLES_FILE

prefixes=`cat prefixes.txt`

cmd="python run-framework.py
  --exps_file experiments-phase2.json
  --step_compute
  --step_export
  --step_upload
  --host localhost
  --port 8491
  --no_docker
  --csv_output"

./runexp.sh $AGI_EXP_HOME "${AGI_RUNFRAMEWORK_PATH}/scripts/run-framework" "$cmd" $prefixes # ${prefixes[*]}

exit
