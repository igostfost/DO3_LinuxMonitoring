#!/bin/bash

source func.sh

func

read -p "Would you like to save data into the file? (Y/n)" answer

if [[ $answer == "Y" ]] || [[ $answer == "y" ]]; then
func > $(date +"%d_%m_%Y_%H_%M_%S").status

elif [[ $answer == "N" ]] || [[ $answer == "n" ]]; then
exit 1

else
echo "Error: Incorrect answer"

fi
