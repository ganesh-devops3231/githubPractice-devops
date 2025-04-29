#!/bin/bash

################################################################
#Author: Ganesh
#Creation Date: 22nd April 2025
#Version: V1
#About: This shell script is to get the VM health details
################################################################

set -x
set -e
set -o pipefail

df -h

free -g

nproc

ps -ef | grep "ganesh" | awk -F" " '{print $2}'
