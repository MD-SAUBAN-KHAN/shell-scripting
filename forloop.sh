#!/bin/bash
#
####################################
#
# This is a simple for-loop example
#
#  Author : MDSK
#  Date: 11/08/2024
#  version: v1
####################################





for i in $(seq 0 10 100);
do
	if [ $i -gt 50 ] 
	then
	       	echo $i
	fi
done
