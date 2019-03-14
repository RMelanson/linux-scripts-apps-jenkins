# EXIT IF INSTALLED
# VALIDATE THE INSTALLATION HOME DIRECTORY AND IF EXISTS, EXIT SCRIPT

jenkinsHome=$1
if [ -d $jenkinsHome ]; then
    echo Jenkins Already installed EXITING
    return
fi
