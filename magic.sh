#!/bin/bash

######################################################################
# @author      : La Minh Duc
# @file        : magic
# @created     : Sunday Mar 06, 2022 12:45:12 +07
#
# @description : 
######################################################################

# Detect machine
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

# Add ssh key
if [ "$machine" = "Linux" ]; then
    eval "$(ssh-agent -s)"
    sleep 1
    ssh-add ~/.ssh/id_rsa
    ssh-add ~/.ssh/myGithub
fi
