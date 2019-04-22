#!/bin/bash

# JENKINS CONFIGURATION PARAMETERS
bootstrap="jenkinsBootstrap.sh"
gitRepo="linux-scripts-apps-jenkins"

#SET UP INSTALLATION DIRECTORY`
pkg=JENKINS
scriptType="utils"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

jenkinsLock=/var/lock/subsys/jenkins
JENKINS_WAR="/usr/lib/jenkins/jenkins.war"
#jenkinsServer Options: STAND_ALONE, TOMCAT, JBOSS, WEBSPHERE, WEBLOGIC
#jenkinsServer=STAND_ALONE
JENKINS_SERVER=JBOSS
