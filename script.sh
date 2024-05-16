#!/bin/sh

source "./colors.sh"

black_list=("log(" "print(" "write(" "cout <<")
files=$(git diff --cached --name-only)
files_with_logs=()

search_coincidence(){
  file="$1"
  for patron in "${black_list[@]}"; do
    return grep -rl $patron $file
  done
}


files_coincidence(){
  for file in "${files[@]}"; do
    echo search_coincidence $file
  done
}
files_coincidence

