#!/bin/bash

#Function to get the no.of files in current directory
function get_file_count{
  local count=$(ls -1 | wc -1)
  echo "$count"
 }
 
 #Prompt user for their guess
function prompr_guess{
  read -p "How many files are in the current directory" guess
  echo "$guss"
}

#main game Loop

while true
do
 file_count=$(get_file_count)
 user_guess=$(prompr_guess)
 
 if [[ $user_guess -eq $file_count ]]
 then
    echo "Congratulations, your guess is correct"
    exist 0
 elif [[ $user_guess -lt $file_count ]]
 then
    echo "Your guess is too low, try again"
 else
     echo "Your guess is too high, try again"
 fi
done
