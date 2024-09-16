#!/bin/bash

################################
# Method 2 of ques1.sh ---> generally not req to do like this in bash script instead for numeric use ((....))
# Write a shell script to print numbers divisible by 3 and 5 but not 15 fot the range 1 to 100
#
# Author: MDSK
# Date:11/08/2024
# Version: v1
################################


for i in {1..100}; 
do
	if ( [ $(expr $i % 3) -eq 0 ] || [ $(expr $i % 5) -eq 0 ] ) && [ $(expr $i % 15) -ne 0 ]; 
        then
                echo $i
        fi;
done

