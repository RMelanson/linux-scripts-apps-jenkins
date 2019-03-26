#! /bin/bash
# INSTALL JENKINS ON LINUX WITH REMOTE ACCESS AS A SERVICE

# SETUP WILDFLY CONFIGURATION ENVIRONMENT AND PARAMETERS
clear
echo reinstall.sh:  EXECUTING . ./env/reinstall.sh
. ./env/setEnv.sh

echo reinstall.sh:  EXECUTING rm -rf $pkg
rm -rf $pkg
echo reinstall.sh:  EXECUTING $bootstrap
$bootstrap
