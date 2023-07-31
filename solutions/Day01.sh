#!/bin/bash

# Above line is called shebang which tells the system this is the script and use bash interpretor

# Task  2: Echo
echo "BashBlaze Challenges..! initited by @TWS"

# Task  3: Variables
name="Ashish"
surname="Karad"
giturl="https://github.com/ashishkarad5566"
random_number=$(shuf -i 100000-999999 -n 1)  #create 6 digit random number

# Task  4: Using Variables
introduction="Hello I am, $name $surname. If you like my scripts check out my git 
              profile $giturl for more amazing scripts."
echo "$introduction"

# Task  5: Using Built-in Variables
echo "My current bash path - $BASH"
echo "I am Using - $OSTYPE"
sudo timedatectl set-timezone Asia/Kolkata  #setting up TimeZone 
export TZ=Asia/Kolkata                      #export that TimeZone into Variable(not built-in)
echo "My current TimeZone is- $TZ"
echo "I can Guess you bank otp - $random_number" #its my superpower

# Task  6: Wildcards
echo "lets create 10 files using single command.!"
mkdir -p BashBlaze/Day{1..10}.txt

#Dont forget to Give your script executable permission
#chmod +x day1_script.sh
