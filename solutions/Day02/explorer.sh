#!/bin/bash

# Part 1: File & Directory Explore

# Author: Ashish Karad

##########################################

echo "Welcomes to Explore!"

echo "This script will list all files & directory in current path with their size"

ls -lh

# This will run while loop which accept continuously

# Till User input is empty

while [[ true ]];

do 
  
	read -p "Enter a text (Press Enter): " SENTENCE

     length= ${SENTENCE}
 
#############################################
#If user input is empty exit the script
#############################################
if [[ $length -eq 0 ]]; then

	echo "Exiting the Explorer. Gudbye!"

	break

fi

echo "character count: $length "

done


