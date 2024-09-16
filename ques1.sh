#!/bin/bash

################################
#
# Write a shell script to print numbers divisible by 3 and 5 but not 15 fot the range 1 to 100
#
# Author: MDSK
# Date:11/08/2024
# Version: v1
################################


for i in {1..100};
do
	if (( (i % 3 == 0 || i % 5 == 0) && i % 15 != 0 ));
	then
		echo $i
	fi;
done
