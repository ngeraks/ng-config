# .bashrc
#export TERM=xterm
export TERM=xterm-256color
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -n "$PS1" ]; then #not interactive shell, e.g. scp guard

export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
#HOME=/nica/mpd4/geraks
#cd /nica/mpd19/geraks
# User specific aliases and functions
#echo $PATH
export LD_LIBRARY_PATH=$HOME/GCC-9.3.0/lib64:$LD_LIBRARY_PATH
export PATH=$HOME/GCC-9.3.0/bin:$PATH
export PATH=$HOME/GCC-9.3.0/libexec/gcc/x86_64-pc-linux-gnu/9.3.0:$PATH

export PATH=$HOME/cmake-3.21.2/install/bin:$PATH

export CC=$HOME/GCC-9.3.0/bin/gcc
export CXX=$HOME/GCC-9.3.0/bin/g++

export LD_LIBRARY_PATH=$HOME/xerces-c-3.2.3/install/lib64:$LD_LIBRARY_PATH
export PATH=$HOME/xerces-c-3.2.3/install/bin:$PATH

#export LD_LIBRARY_PATH=$HOME/patch-2.7.6/install/lib64:$LD_LIBRARY_PATH
#export PATH=$HOME/patch-2.7.6/install/bin:$PATH

export LD_LIBRARY_PATH=$HOME/binutils-2.37/install/lib64:$LD_LIBRARY_PATH
export PATH=$HOME/binutils-2.37/install/bin:$PATH

export LD_LIBRARY_PATH=$HOME/gsl-2.7/install/lib64:$LD_LIBRARY_PATH
export PATH=$HOME/gsl-2.7/install/bin:$PATH

export LD_LIBRARY_PATH=$HOME/yaml-cpp-0.7.0/install/lib64:$LD_LIBRARY_PATH
#export PATH=$HOME/yaml-cpp-0.7.0/install/include:$PATH
export YAMLCPP_DIR=$HOME/yaml-cpp-0.7.0/install

export EIGEN3_ROOT=$HOME/eigen-3.4.0/Eigen

#echo $PATH
export PATH=$HOME/tmux-3.2a:$PATH
#if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#	  tmux a -t default || exec tmux new -s default && exit;
#fi
force_color_prompt=yes
alias ls="ls -A -C -w 80 --color"
alias cdls='cd "$@" && ls'
shopt -s autocd
PROMPT_COMMAND='[[ ${__new_wd:=$PWD} != $PWD ]] && ls; __new_wd=$PWD' # ls after cding
#set -o vi
#cd /scratch1/geraks
fi #scp guard
