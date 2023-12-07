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

RESET="\e[0m"

echo -e "${p1}${p2}HOSTNAME${RESET} = ${p3}${p4}$HOSTNAME${RESET}"
echo -e "${p1}${p2}TIMEZONE${RESET} = ${p3}${p4}$TIMEZONE${RESET}"
echo -e "${p1}${p2}USER${RESET} = ${p3}${p4}$USER${RESET}"
echo -e "${p1}${p2}OS${RESET} = ${p3}${p4}$OS${RESET}"
echo -e "${p1}${p2}DATE${RESET} = ${p3}${p4}$DATE${RESET}"
echo -e "${p1}${p2}UPTIME${RESET} = ${p3}${p4}$UPTIME${RESET}"
echo -e "${p1}${p2}UPTIME_SEC${RESET} = ${p3}${p4}$UPTIME_SEC${RESET}"
echo -e "${p1}${p2}IP${RESET} = ${p3}${p4}$IP${RESET}"
echo -e "${p1}${p2}MASK${RESET} = ${p3}${p4}$MASK${RESET}"
echo -e "${p1}${p2}GATEWAY${RESET} = ${p3}${p4}$GATEWAY${RESET}"
echo -e "${p1}${p2}RAM_TOTAL${RESET} = ${p3}${p4}$RAM_TOTAL${RESET}"
echo -e "${p1}${p2}RAM_USED${RESET} = ${p3}${p4}$RAM_USED${RESET}"
echo -e "${p1}${p2}RAM_FREE${RESET} = ${p3}${p4}$RAM_FREE${RESET}"
echo -e "${p1}${p2}SPACE_ROOT${RESET} = ${p3}${p4}$SPACE_ROOT${RESET}"
echo -e "${p1}${p2}SPACE_ROOT_USED${RESET} = ${p3}${p4}$SPACE_ROOT_USED${RESET}"
echo -e "${p1}${p2}SPACE_ROOT_FREE${RESET} = ${p3}${p4}$SPACE_ROOT_FREE${RESET}"
