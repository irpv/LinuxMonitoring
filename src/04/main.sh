#!/bin/bash

if [[ $# != 0 ]]; then
  echo "invalid input: parameter specified (there is shoudn't be any)"
else
  . config.conf

  if [[ -z "$column1_background" ]]; then
    column1_background="default"
  fi

  if [[ -z "$column1_font_color" ]]; then
    column1_font_color="default"
  fi

  if [[ -z "$column2_background" ]]; then
    column2_background="default"
  fi

  if [[ -z  "$column2_font_color" ]]; then
    column2_font_color="default"
  fi

  . colors.sh
  
  . ./system.sh

  echo -e "\nColumn 1 background = $column1_background ($p1_name)"
  echo -e "Column 1 font color = $column1_font_color ($p2_name)"
  echo -e "Column 2 background = $column2_background ($p3_name)"
  echo -e "Column 2 font color = $column2_font_color ($p4_name)"
fi
