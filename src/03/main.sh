#!/bin/bash

source cases.sh
source info.sh


# Параметр 1 - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 2 - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 3 - это фон значений (после знака '=')
# Параметр 4 - это цвет шрифта значений (после знака '=')

# Цвет фона
BGWHITE='\033[47m'        #${BGWHITE}
BGRED='\033[41m'          #${BGRED}
BGGREEN='\033[42m'        #${BGGREEN}
BGBLUE='\033[44m'         #${BGBLUE}
BGPURPLE='\033[45m'       #${BGPURPLE}
BGBLACK='\033[40m'        #${BGBLACK}
default='\033[0m'

# Цвет текста:
WHITE='\033[37m'        #${WHITE}
RED='\033[31m'          #${RED}
GREEN='\033[32m'        #${GREEN}
BLUE='\033[34m'         #${BLUE}
PURPLE='\033[35m'       #${PURPLE}
BLACK='\033[30m'        #${BLACK}
default='\033[0m'


if [[ $1 =~ ^[1-6]$ && $2 =~ ^[1-6]$ && $3 =~ ^[1-6]$ && $4 =~ ^[1-6]$ && $3 != $4 && $1 != $2  && $# == 4 ]] ;
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

elif [ $# != 4 ] ;
then
echo "The number of parameters must be 4 (only digits)"

elif [[ ! $1 =~ ^[1-6]$ || ! $2 =~ ^[1-6]$ || ! $3 =~ ^[1-6]$ || ! $4 =~ ^[1-6]$ ]]
then
echo "Each parameter must be a number in range [1 - 6]"

elif [ $# == 4 ] && [[ $3 == $4 || $1 == $2 ]] ;
then
echo "The color of font and background in the same column cannot coincide. Please, try to run the script again"

fi

