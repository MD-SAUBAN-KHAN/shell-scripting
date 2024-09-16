#!/bin/bash
#
#
##########################
# write a shell script to count the no. of 's' in word Mississippi
#Author : MDSK
#Date: 11/08/2024
#version: v1
##########################


###########################
#
#  APPROACH ----> 01
#
###########################


x=mississippi

c=$(grep -o "s" <<<"$x" | wc -l) 

echo "The number of 's' in \"$x\" is $c."



###########################
#
#  APPROACH ----> 02
#
###########################

word="Mississippi"
count=$(echo "$word" | awk -F's' '{print NF-1}')

echo "The number of 's' in \"$word\" is $count."
