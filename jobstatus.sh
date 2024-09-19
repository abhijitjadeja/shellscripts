#!/usr/bin/bash
while read -r job; do
  echo "checking $job"
  if [[ -d $job ]]; then
    log=$(find $job -name "*.log")
    if [[ -e $log ]]; then
      ls -l $log
    else
      echo "no logs in $job"
    fi
  else
    echo "directory does not exist - $job"
  fi
done < $1

