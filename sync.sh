#!/bin/bash
push(){
  echo push
  git add .
  git commit -m "$(whoami)@$(hostname) $(date)"
  git push
}
pull(){
  echo pull
  git pull
}

local_change=$(git status --porcelain --untracked-files=no | wc -l)
if [ $local_change -gt 0 ]; then push; fi
remote_change=$(git fetch --dry-run | wc -l)
if [ $remote_change -gt 0 ]; then pull; fi
