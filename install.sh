#!/bin/sh
thisdir=$(pwd)
if [ -z "$1" ]; then 
  git clone https://github.com/ngeraks/ng-config.git
fi
cd ng-config

cprm(){
  cp -rf $1 $1_old
  rm -rf $1
}
echo "Backup old"
cprm ~/.zshrc
cprm ~/.vimrc
cprm ~/.vim
cprm ~/.config/nvim/init.vim
cprm ~/.tmux.conf

#mv ~/.zshrc ~/.zshrc_old
#mv ~/.bashrc ~/.bashrc_old
#mv ~/.vimrc ~/.vimrc_old
#mv ~/.vim/* ~/.vim_old
#mv ~/.tmux.conf ~/.tmux.conf_old

#zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #TODO Check if zsh ohmyzsh

echo "Copy from config to home"
ln -s $thisdir/ng-config/zshrc ~/.zshrc
#cp $thisdir/bashrc ~/.bashrc
ln -s $thisdir/ng-config/vimrc ~/.vimrc
mkdir -p ~/.vim/after/syntax
ln -s $thisdir/ng-config/cpp.vim ~/.vim/after/syntax/cpp.vim
ln -s $thisdir/ng-config/c.vim ~/.vim/after/syntax/c.vim
mkdir -p ~/.config/nvim/
ln -s $thisdir/ng-config/init.vim ~/.config/nvim/init.vim
ln -s $thisdir/ng-config/tmux.conf ~/.tmux.conf
cd $thisdir
