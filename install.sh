#!/bin/sh
thisdir=$(pwd)
git clone https://github.com/ngeraks/ng-config.git
cd ng-config

echo "Backup old"
mv ~/.zshrc ~/.zshrc_old
#mv ~/.bashrc ~/.bashrc_old
mv ~/.vimrc ~/.vimrc_old
mv ~/.vim ~/.vim_old
mv ~/.tmux.conf ~/.tmux.conf_old

#zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #TODO Check if zsh ohmyzsh

echo "Copy from config to home"
cp $thisdir/ng-config/zshrc ~/.zshrc
#cp $thisdir/bashrc ~/.bashrc
cp $thisdir/ng-config/vimrc ~/.vimrc
mkdir -p ~/.vim/after/syntax
cp $thisdir/ng-config/cpp.vim ~/.vim/after/syntax/cpp.vim
cp $thisdir/ng-config/c.vim ~/.vim/after/syntax/c.vim
cp $thisdir/ng-config/tmux.conf ~/.tmux.conf
cd $thisdir
