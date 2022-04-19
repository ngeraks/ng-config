#!/bin/bash
pull(){
  echo pull
  git pull
  bash install.sh 1
}

push(){
  echo push but first pull
  git pull
  git add .
  git commit -m "$(whoami)@$(hostname) $(date)"
  git push
}

#local_change=$(git status --porcelain --untracked-files=no | wc -l)
#if [ $local_change -gt 0 ]; then 
  push #; fi
#remote_change=$(git fetch --dry-run | wc -l)
#if [ $remote_change -gt 0 ]; then 
  pull #; fi
