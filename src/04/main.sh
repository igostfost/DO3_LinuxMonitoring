#!/bin/bash

source info.sh
source cases.sh
source colors.cfg


if [[ $one == "" ]]
then 
let one=$oneD && bg=$bgD && bgT=$bgTD
fi

if [[ $two == "" ]]
then
let  two=$twoD && txtc=$txtcD && txtcT=$txtcTD
fi 

if [[ $three == "" ]]
then
let  three=$threeD && bg2=$bg2D && bgT2=$bgT2D
fi

if [[ $four == "" ]]
then
let  four=$fourD && txtc2=$txtc2D && txtcT2=$txtcT2D
fi

if [[ $one =~ ^[1-6]$ && $two =~ ^[1-6]$ && $three =~ ^[1-6]$ && $four =~ ^[1-6]$ && $three != $four && $one != $two && $# < 1 ]] ;
then
echo -e "$bg$txtc HOSTNAME$default=$bg2$txtc2$HOSTNAME$default"
echo -e "$bg$txtc TIMEZONE$default=$bg2$txtc2$TIMEZONE$default"
echo -e "$bg$txtc USER$default=$bg2$txtc2$USER$default"
echo -e "$bg$txtc OS$default=$bg2$txtc2$OS$default"
echo -e "$bg$txtc DATE$default=$bg2$txtc2$DATE$default"
echo -e "$bg$txtc UPTIME$default=$bg2$txtc2$UPTIME$default"
echo -e "$bg$txtc UPTIME_SEC$default=$bg2$txtc2$UPTIME_SEC$default"
echo -e "$bg$txtc IP$default=$bg2$txtc2$IP$default"
echo -e "$bg$txtc MASK$default=$bg2$txtc2$MASK$default"
echo -e "$bg$txtc GATEWAY$default=$bg2$txtc2$GATEWAY$default"
echo -e "$bg$txtc RAM_TOTAL$default=$bg2$txtc2$RAM_TOTAL$default"
echo -e "$bg$txtc RAM_USED$default=$bg2$txtc2$RAM_USED$default"
echo -e "$bg$txtc RAM_FREE$default=$bg2$txtc2$RAM_FREE$default"
echo -e "$bg$txtc SPACE_ROOT$default=$bg2$txtc2$SPACE_ROOT$default"
echo -e "$bg$txtc SPACE_ROOT_USED$default=$bg2$txtc2$SPACE_ROOT_USED$default"
echo -e "$bg$txtc SPACE_ROOT_FREE$default=$bg2$txtc2$SPACE_ROOT_FREE$default"

echo -en '\n'

echo "Column 1 background"=$bgT
echo "Column 1 font color"=$txtcT
echo "Column 2 background"=$bgT2
echo "Column 2 font color"=$txtcT2

elif [[ $# > 0 ]] ;
then
echo "Error: You entered a parameter"

elif [[ ! $one =~ ^[1-6]$ || ! $two =~ ^[1-6]$ || ! $three =~ ^[1-6]$ || ! $four =~ ^[1-6]$ ]]
then
echo "Each parameter must be a number in range [1 - 6]"

elif [[ $three == $four || $one == $two ]] ;
then
echo "The color of font and background in the same column cannot coincide. Please, try to run the script again"
fi
fi
