#!/bin/bash

######################################################################
# Use this 'variables.sh' if you are running the system in a 
# Docker container.  
# BEWARE: Some of the parameters NEED to be the same inside and outside the container 
# (such as API_PORT, depending on the port mappings).
######################################################################


# ---------------------------------------
# AGI Home Folders
# ---------------------------------------

# Code Home
export AGI_HOME=/home/incubator/agief-project/agi

# RUN Home
export AGI_RUN_HOME=/home/incubator/agief-project/run

# Experiment Home
export AGI_EXP_HOME=$AGI_RUN_HOME

# DATA Home
export AGI_DATA_HOME=/home/incubator/agief-project/data/$CUSTOM_DATASET

# DATA Run Home (set to the home of the data for the actual experiment - i.e. in the environment where they'll be running)
export AGI_DATA_RUN_HOME=/root/dev/data




# Database
export DB_PORT=5432
export DB_HOST=172.31.22.107		# for Task on ECS, we need the hardcoded value, because we can't go in and set an env variable before running the java process - this will need to be improved.

# ---------------------------------------
# Dependencies
# ---------------------------------------

# POSTGRESQL
export POSTGRESQL_BIN=/usr/bin/psql

# MAVEN
export MAVEN_BIN=/usr/bin/mvn

# Java
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# ---------------------------------------
# Set Path
# ---------------------------------------
export PATH=${MAVEN_HOME}/bin:${PATH}
export PATH=${JAVA_HOME}/bin:${PATH}

