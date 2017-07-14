#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export VISUAL="vim"

export PATH=$PATH:/home/hampus/.scripts
export PATH=$PATH:/opt/lampp
export PATH=$PATH:/home/hampus/Enpass

