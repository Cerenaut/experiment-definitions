#!/bin/bash

######################################################################
#
# Use this 'variables.sh' if you are running experiments from Jenkins
#
######################################################################


# ----------------------------------------
# AGI Home 
# ---------------------------------------
export AGI_HOME=$WORKSPACE/agi

# RUN Home. Set to the location where the experiments are being executed.
export AGI_RUN_HOME=/root/dev/run

# Experiment Definitions home. Set to the home of the experiment definitions - i.e. the environment where you are launching experiments from, which is not necessarily where they are being executed.
#export AGI_EXP_HOME=$WORKSPACE/experiment-definitions/20171201-mnist-ksparse
#export AGI_EXP_HOME=$WORKSPACE/experiment-definitions/20171201-mnist-ksparse
export AGI_EXP_HOME=$WORKSPACE/experiment-definitions/20170104-mnist-onlineksparse-ph1
#export AGI_EXP_HOME=$WORKSPACE/experiment-definitions/20170104-mnist-quilted-gng-ph1

# DATA Home
export AGI_DATA_HOME=$AGI_EXP_HOME		# there is no Data on Jenkins, but needs to be a real folder

# DATA RUN Home (set to the home of the data for the actual experiment - i.e. in the environment where they'll be running)
export AGI_DATA_RUN_HOME=/root/dev/data

# Database
export DB_PORT=5432
# export DB_HOST=localhost		# IMPORTANT!!!  DO NOT DEFINE THIS VARIABLE.   It will be defined by scripts at runtime, and we don't want it to get defined by sourcing this file

