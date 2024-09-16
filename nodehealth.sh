#!/bin/bash
#
#############################
# Author: MDSK
# Date: 11/08/2024
#
#  This script outputs the node health
#
#  Version: v1
#############################

set -x #debug mode
set -e # exit the script when there is an error
set -o pipefail

#eg fr set -eo cmd 
#advhACVHCBSJC | echo "mdsk" ---> will still pass even thr is error
#     (or)
#kwjefnkjsBCKJBC | echo mdsk | akjdbsajdbs ---> will fail
#
#==REASON==>> set -e chks only if last cmd is ri8 or not like eg 1 so we set | (pipefail) as set -o to exit even if any cmd is wrong
#
#
#
df -h
free -g
nproc
ps -ef | grep python | awk -F" " '{print $2}'
