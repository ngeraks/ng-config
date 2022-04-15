#!/bin/bash
push(){
  git add .
  git commit -m $(whoami)@$(localhost) $(date)
  git push
}
pull(){

}


