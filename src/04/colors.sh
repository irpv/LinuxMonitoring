#!/bin/bash

# 1 white  | fg is "\e[97m" | bg is "\e[107m"
# 2 red    | fg is "\e[31m" | bg is "\e[41m"
# 3 green  | fg is "\e[32m" | bg is "\e[42m"
# 4 blue   | fg is "\e[34m" | bg is "\e[44m"
# 5 purple | fg is "\e[35m" | bg is "\e[45m"
# 6 black  | fg is "\e[30m" | bg is "\e[40m"

# 1 and 3 is bg, 2 and 4 is fg

case $column1_background in 
  "1")
    p1="\e[107m"
    p1_name="white" ;;
  "2")
    p1="\e[41m"
    p1_name="red" ;;
  "3")
    p1="\e[42m"
    p1_name="green" ;;
  "4")
    p1="\e[44m"
    p1_name="blue" ;;
  "5")
    p1="\e[45m"
    p1_name="purple" ;;
  "6")
    p1="\e[40m" 
    p1_name="black" ;;
  "default")
    p1="\e[40m" 
    p1_name="black" ;;
esac

case $column1_font_color in 
  "1") 
    p2="\e[97m"
    p2_name="white" ;;
  "2")
    p2="\e[31m"
    p2_name="red" ;;
  "3")
    p2="\e[32m"
    p2_name="green" ;;
  "4")
    p2="\e[34m"
    p2_name="blue" ;;
  "5")
    p2="\e[35m"
    p2_name="purple" ;;
  "6")
    p2="\e[30m"
    p2_name="black" ;;
  "default")
    p2="\e[97m"
    p2_name="white" ;; 
esac

case $column2_background in 
  "1")
    p3="\e[107m"
    p3_name="white" ;;
  "2")
    p3="\e[41m"
    p3_name="red" ;;
  "3")
    p3="\e[42m"
    p3_name="green" ;;
  "4")
    p3="\e[44m"
    p3_name="blue" ;;
  "5")
    p3="\e[45m"
    p3_name="purple" ;;
  "6")
    p3="\e[40m" 
    p3_name="black" ;;
  "default")
    p3="\e[41m"
    p3_name="red" ;;
esac

case $column2_font_color in 
  "1") 
    p4="\e[97m"
    p4_name="white" ;;
  "2")
    p4="\e[31m"
    p4_name="red" ;;
  "3")
    p4="\e[32m"
    p4_name="green" ;;
  "4")
    p4="\e[34m"
    p4_name="blue" ;;
  "5")
    p4="\e[35m"
    p4_name="purple" ;;
  "6")
    p4="\e[30m"
    p4_name="black" ;;
  "default")
    p4="\e[34m"
    p4_name="blue" ;;
esac
