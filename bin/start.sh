#!/usr/bin/env bash 

# Setup ConfigMyMac with settings, helpers and pre-requisites 

source ../config/config.sh
source ${CONFIG_ROOT}/helpers.sh
source ${CONFIG_ROOT}/pre-req.sh

# Import the user defined variables 
source ${MyMac_ROOT}/00_variables.sh

# Start running the actual steps

source ${MyMac_ROOT}/01_basics.sh
source ${MyMac_ROOT}/10_systemsettings.sh
source ${MyMac_ROOT}/20_homebrew.sh
source ${MyMac_ROOT}/30_appstore.sh
source ${MyMac_ROOT}/40_dockutil.sh


