#!/bin/bash

START=`date +%s.%N`

if [ $# != 1 ]; then
  echo "invalid input: there is must be 1 parameter"
  exit 1
elif [[ $1 != */ ]]; then
  echo "invalid input: parameter must ends with '/'"
  exit 1
elif [[ -d $1 ]]; then
  . ./script05.sh
else
  echo "no such file or directory"
  exit 1
fi

END=`date +%s.%N`
TIME=`echo "$END - $START" | bc | awk '{printf("%.2f\n", $1)}' `
echo -e "Script execution time (in seconds) = $TIME"
