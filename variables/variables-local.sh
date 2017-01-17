#!/bin/bash

######################################################################
# Use this 'variables.sh' if you are running the system locally, 
# or if you are are deploying Docker containters from this local environment.
######################################################################


# ----------------------------------------
# AGI Home Folders
# ---------------------------------------

# Code Home (set to the home of the code where it is developed and compiled, it will then be rsynced to where it is executed)
export AGI_HOME=/Users/gideon/Development/ProjectAGI/AGIEF/agi

# RUN Home (set to the home of the experiment definitions - i.e. the environment where you are launching experiments from, which is not necessarily where they are being executed)
export AGI_RUN_HOME=/Users/gideon/Development/ProjectAGI/AGIEF/experiment-definitions/20171201-mnist-ksparse  # mnist-gng-v1

# DATA Home 
export AGI_DATA_HOME=/Users/gideon/Development/ProjectAGI/AGIEF/datasets/mnist      # when running locally

# DATA RUN Home (set to the home of the data for the actual experiment - i.e. in the environment where they'll be running)
export AGI_DATA_RUN_HOME=$AGI_DATA_HOME

# Database
export DB_PORT=5432   # IMPORTANT!!!  DO NOT DEFINE THIS VARIABLE.   It will be defined by scripts at runtime, and we don't want it to get defined by sourcing this file
export DB_HOST=localhost

# ----------------------------------------
# Dependencies
# ---------------------------------------

# POSTGRESQL
export POSTGRESQL_BIN=/Library/PostgreSQL/9.6/bin/psql

# MAVEN
export MAVEN_BIN=/usr/local/bin/mvn

# Java
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`


# ----------------------------------------
# Set Path
# ----------------------------------------
export PATH=${JAVA_HOME}/bin:${PATH}