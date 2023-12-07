#!/bin/bash

if [[ $# != 0 ]]; then
  echo "invalid input: parameter specified (there is shoudn't be any)"
else
  . ./system.sh

  read -p "Do you want to save it to file? (Y/N) " answ
  if [[ $answ == Y || $answ == y ]]; then
    file_name=$(date +"%d_%m_%y_%H_%M_%S")
    bash system.sh > $file_name.status
    echo "file saved"
  fi
fi
