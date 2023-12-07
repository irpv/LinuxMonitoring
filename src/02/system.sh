#!/bin/bash

HOSTNAME=$(hostname)         
TIMEZONE=$(cat /etc/timezone | tr "\n" " "; date +"%-:::z")
USER=$USER
OS=$(echo $(cat /etc/issue | awk '{print $1" "$2}'))
DATE=$(date +"%d %B %Y %H:%M:%S")
UPTIME=$(uptime -p)
UPTIME_SEC=$(awk '{printf("%.f", $1)}' /proc/uptime)
IP=$(hostname -I)
MASK=$(ip a | grep inet | grep brd | awk '{print $4}' | tr "\n" " ")
GATEWAY=$(ip -4 route show default | awk '{print $3}')
RAM_TOTAL=$(free -m | awk '/Mem/{printf "%.3f GB", $2/1024}')
RAM_USED=$(free -m | awk '/Mem/{printf "%.3f GB", $3/1024}')
RAM_FREE=$(free -m | awk '/Mem/{printf "%.3f GB", $4/1024}')
SPACE_ROOT=$(df /root/ | grep dev | awk '{printf"%.2f MB", $2/1024}')
SPACE_ROOT_USED=$(df /root/ | grep dev | awk '{printf"%.2f MB", $3/1024}')
SPACE_ROOT_FREE=$(df /root/ | grep dev | awk '{printf"%.2f MB", $4/1024}')

echo -e "HOSTNAME = $HOSTNAME"
echo -e "TIMEZONE = $TIMEZONE"
echo -e "USER = $USER"
echo -e "OS = $OS"
echo -e "DATE = $DATE"
echo -e "UPTIME = $UPTIME"
echo -e "UPTIME_SEC = $UPTIME_SEC"
echo -e "IP = $IP"
echo -e "MASK = $MASK"
echo -e "GATEWAY = $GATEWAY"
echo -e "RAM_TOTAL = $RAM_TOTAL"
echo -e "RAM_USED = $RAM_USED"
echo -e "RAM_FREE = $RAM_FREE"
echo -e "SPACE_ROOT = $SPACE_ROOT"
echo -e "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo -e "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"
