#!/bin/bash

# 1 white  | fg is "\e[97m" | bg is "\e[107m"
# 2 red    | fg is "\e[31m" | bg is "\e[41m"
# 3 green  | fg is "\e[32m" | bg is "\e[42m"
# 4 blue   | fg is "\e[34m" | bg is "\e[44m"
# 5 purple | fg is "\e[35m" | bg is "\e[45m"
# 6 black  | fg is "\e[30m" | bg is "\e[40m"

# 1 and 3 is bg, 2 and 4 is fg

case $1 in 
  "1") p1="\e[107m";;
  "2") p1="\e[41m";;
  "3") p1="\e[42m";;
  "4") p1="\e[44m";;
  "5") p1="\e[45m";;
  "6") p1="\e[40m";;
esac

case $2 in 
  "1") p2="\e[97m";;
  "2") p2="\e[31m";;
  "3") p2="\e[32m";;
  "4") p2="\e[34m";;
  "5") p2="\e[35m";;
  "6") p2="\e[30m";;
esac

case $3 in 
  "1") p3="\e[107m";;
  "2") p3="\e[41m";;
  "3") p3="\e[42m";;
  "4") p3="\e[44m";;
  "5") p3="\e[45m";;
  "6") p3="\e[40m";;
esac

case $4 in 
  "1") p4="\e[97m";;
  "2") p4="\e[31m";;
  "3") p4="\e[32m";;
  "4") p4="\e[34m";;
  "5") p4="\e[35m";;
  "6") p4="\e[30m";;
esac
