# EXIT IF INSTALLED
# VALIDATE THE INSTALLATION HOME DIRECTORY AND IF EXISTS, EXIT SCRIPT

jenkinsHome=$1
if [ -e $jenkinsLock ]
then
    echo installing Jenkins
else
    echo Jenkins Already installed EXITING
    return
fi
