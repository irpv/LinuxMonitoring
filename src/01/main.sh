#!/bin/bash

re='^[+-]?[0-9]+([.][0-9]+)?$'

if [[ $# != 1 ]]; then
  echo "invalid input: there is must be 1 parameter"
elif [[ $1 =~ $re ]]; then
  echo "invalid input: parameter must be a text"
else
  echo $1
fi
