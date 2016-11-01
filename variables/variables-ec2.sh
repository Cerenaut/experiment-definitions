#!/bin/bash

######################################################################
# Use this 'variables.sh' if you are running the system on EC2,
# or if you are are deploying Docker containters from EC2 machine.
#
# In general, it doesn't need to be modified.
# INSTEAD - modify the variables.sh file that you are using on the 
# 			machine from which you are syncing to here.
######################################################################


# ----------------------------------------
# AGI Home 
# ---------------------------------------
export AGI_HOME=/home/ec2-user/agief-project/agi

# RUN Home
export AGI_RUN_HOME=/home/ec2-user/agief-project/run

# DATA Home
export AGI_DATA_HOME=/home/ec2-user/agief-project/data

# DATA Run Home (set to the home of the data for the actual experiment - i.e. in the environment where they'll be running)
export AGI_DATA_RUN_HOME=/root/dev/data

# Database
export DB_PORT=5432
# export DB_HOST=localhost		# IMPORTANT!!!  DO NOT DEFINE THIS VARIABLE.   It will be defined by scripts at runtime, and we don't want it to get defined by sourcing this file
