#!/bin/bash

HOSTNAME=$(hostname)
#echo "HOSTNAME = $HOSTNAME"
TIMEZONE=$(timedatectl | grep 'Time zone' | awk '{print $3}')
UTC=$(date +%z)
#echo "TIMEZONE = $TIMEZONE $UTC"
USER=$(whoami)
#echo "USER = $USER"
OS=$(cat /etc/issue)
#echo "OS = $OS"
DATE=$(date +"%d %B %Y %T")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | awk '{print $1}')
IP=$(ip a | grep -m 1 'inet' |  awk '{print $2}')
MASK=$(ifconfig | grep 'netmask' | awk '{print $4}')
GATEWAY=$(ip route | grep default | awk '{print $3}')
RAM_TOTAL=$(free -h | grep Mem | awk '{printf("%.3f", $2)}')
RAM_USED=$(free -h | grep Mem | awk '{printf("%.3f", $3)}')
RAM_FREE=$(free -h | grep Mem | awk '{printf("%.3f", $4)}')
SPACE_ROOT=$(df -m / | awk '{printf("%.2f", $2)}')
SPACE_ROOT_USED=$(df -m / | awk '{printf("%.2f", $3)}')
SPACE_ROOT_FREE=$(df -m / | awk '{printf("%.2f", $4)}')


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

