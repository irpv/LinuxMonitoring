#!/bin/bash

if [[ $# != 4 ]]; then
  echo "invalid input: there is must be 4 parameters"
  exit 1
else
  for p in "$@"
    do
      if [[ $p -lt 1 || $p -gt 6 ]]; then
        echo "invalid input: parameters must be a digits from 1 to 6"
        exit 1
      fi
    done
  if [[ $1 -eq $2 || $3 -eq $4 ]]; then
    echo "invalid input: the font and background colours of one column mustn't match (p1 != p2 and p3 != p4)"
    exit 1
  else
    . ./colors.sh
    . ./system.sh
  fi
fi
