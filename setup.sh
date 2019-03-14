#! /bin/bash
# INSTALL JENKINS ON LINUX WITH REMOTE ACCESS AS A SERVICE

# SETUP WILDFLY CONFIGURATION ENVIRONMENT AND PARAMETERS
echo Setup.sh:  EXECUTING . ./env/setEnv.sh
. ./env/setEnv.sh

#CHECK IF JENKINS INSTALLED AND RETURN IF INSTALLED
echo Setup.sh:  EXECUTING . ./utils/exitIfInstalled.sh $jenkinsHome
. ./utils/exitIfInstalled.sh $jenkinsHome

# DOWNLOAD AND INSTALL JENKINS 10
echo Setup.sh:  EXECUTING . ./installs/installJenkins.sh
. ./installs/installJenkins.sh

# START JENKINS SERVICE
echo Setup.sh:  EXECUTING service jenkins start
service jenkins start
