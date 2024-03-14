#!/bin/bash


HOSTNAME=$(hostname)
#echo "HOSTNAME = $HOSTNAME"
TIMEZONE=$(timedatectl | grep 'Time zone' | awk '{print $3}')
UTC=$(date +%z)
#echo "TIMEZONE = $TIMEZONE $UTC"
USER=$(whoami)
#echo "USER = $USER"
OS=$`cat /etc/issue | awk '{print $1,$2,$3}'| tr -d '\r\n'`
#echo "OS = $OS"
DATE=$(date +"%d %B %Y %T")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(ip a | grep -m 1 'inet' |  awk '{print $2}')
MASK=$(ifconfig | grep -m 1 'netmask' | awk '{print $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}')
RAM_TOTAL=$(free -h | grep Mem | awk '{printf("%.3f", $2)}')
RAM_USED=$(free -h | grep Mem | awk '{printf("%.3f", $3)}')
RAM_FREE=$(free -h | grep Mem | awk '{printf("%.3f", $4)}')
SPACE_ROOT=$(df -m / | awk '{printf("%.2f", $2)}')
SPACE_ROOT_USED=$(df -m / | awk '{printf("%.2f", $3)}')
SPACE_ROOT_FREE=$(df -m / | awk '{printf("%.2f", $4)}')


# Параметр 1 - это фон названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 2 - это цвет шрифта названий значений (HOSTNAME, TIMEZONE, USER и т.д.)
# Параметр 3 - это фон значений (после знака '=')
# Параметр 4 - это цвет шрифта значений (после знака '=')

# Цвет фона
BGWHITE='\033[47m'        #    ${BGWHITE}
BGRED='\033[41m'        #    ${BGRED}
BGGREEN='\033[42m'        #    ${BGGREEN}
BGBLUE='\033[44m'        #    ${BGBLUE}
BGPURPLE='\033[45m'        #    ${BGPURPLE}
BGBLACK='\033[40m'        #    ${BGBLACK}
default='\033[0m'

# Цвет текста:
WHITE='\033[37m'        #    ${WHITE}
RED='\033[31m'            #    ${RED}
GREEN='\033[32m'        #    ${GREEN}
BLUE='\033[34m'            #    ${BLUE}
PURPLE='\033[35m'        #    ${PURPLE}
BLACK='\033[30m'        #    ${BLACK}
default='\033[0m'



#Цвет текстом
whiteT="1 (white)"
redT="2 (red)"
greenT="3 (green)"	
blueT="4 (blue)"	
purpleT="5 (purple)"	
blackT="6 (black)"		

#Дефолтные значения
oneD=6
twoD=1
threeD=2
fourD=4

whiteTD="default (white)"
redTD="default (red)"
greenTD="default (green)"	
blueTD="default (blue)"	
purpleTD="default (purple)"	
blackTD="default (black)"	



one=`cat colors.cfg | grep column1_background= | sed 's/1/first/1' | tr -d "columnfirst_background="`
two=`cat colors.cfg  | grep column1_font_color= | sed 's/1/first/1' | tr -d "columnfirst_font_color="`
three=`cat colors.cfg  | grep column2_background= | sed 's/2/second/1'| tr -d "columnsecond_background="`
four=`cat colors.cfg  | grep column2_font_color= | sed 's/2/second/1'| tr -d "columnsecond_font_color="`
