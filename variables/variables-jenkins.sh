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

# RUN Home
#export AGI_RUN_HOME=$WORKSPACE/experiment-definitions/mnist-gng-v1
export AGI_RUN_HOME=$WORKSPACE/experiment-definitions/mnist-autoencoder-v2

# RUN Home
export AGI_DATA_HOME=$AGI_RUN_HOME		# there is no Data on Jenkins, but needs to be a real folder

# DATA RUN Home (set to the home of the data for the actual experiment - i.e. in the environment where they'll be running)
# export AGI_DATA_HOME=~/Development/ProjectAGI/AGIEF/datasets/MNIST      # when running locally
export AGI_DATA_RUN_HOME=/root/dev/data

# Database
export DB_PORT=5432
# export DB_HOST=localhost		# IMPORTANT!!!  DO NOT DEFINE THIS VARIABLE.   It will be defined by scripts at runtime, and we don't want it to get defined by sourcing this file

