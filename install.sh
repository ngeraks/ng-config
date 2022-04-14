#!/bin/sh
thisdir=$(pwd)
git clone https://github.com/ngeraks/ng-config.git

echo "Backup old"
mv ~/.zshrc ~/.zshrc_old
#mv ~/.bashrc ~/.bashrc_old
mv ~/.vimrc ~/.vimrc_old
mv ~/.vim ~/.vim_old
mv ~/.tmux.conf ~/.tmux.conf_old

#zsh
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" #TODO Check if zsh ohmyzsh

echo "Copy from config to home"
cp $thisdir/zshrc ~/.zshrc
#cp $thisdir/bashrc ~/.bashrc
cp $thisdir/vimrc ~/.vimrc
cp -r $thisdir/vim ~/.vim
cp $thisdir/tmux.conf ~/.tmux.conf

