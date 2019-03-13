#! /bin/bash
# INSTALL JENKINS ON LINUX WITH REMOTE ACCESS AS A SERVICE

# SETUP WILDFLY CONFIGURATION ENVIRONMENT AND PARAMETERS
. ./env/setEnv.sh

#CHECK IF JENKINS INSTALLED AND RETURN IF INSTALLED
. ./utils/exitIfInstalled.sh $wfHome

# INSTALL REQUIRED DEVELOPMENT LIBRARIES
./installs/installJava8.sh

# SET UP JENKINS ADMIN USER
./installs/addPkgUser.sh $wfOwner $wfGroup $wfHome $pkg

# DOWNLOAD AND INSTALL JENKINS 10
./installs/installjBoss10.sh $wfOwner $wfGroup $wfHome $wfLog

# SET UP JENKINS REMOTING CONFIGURATION 
./installs/configjBossRemoting.sh $wfHome $wfAdmin

# CONFIGURE JENKINS AS A SERVICE AND START JENKINS SERVICE
./installs/addjBossAsService.sh $wfHome 

# START JENKINS SERVICE
service jenkins start
