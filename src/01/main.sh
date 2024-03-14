#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]]; then
   echo "ERROR"
elif [[ $1 == "!" || $1 == "@" || $1 == "^" || $1 == "$" || $1 == "-" || $1 == "_" || $1 == "+" || $1 == ":" || $1 == "?" ]];
then
echo "ERROR"
elif [ -z $1 ];
then
echo "You did not enter a parameter"
else
echo "$1"
fi
