#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
# >>>>BEGIN ADDED BY CNCHI INSTALLER<<<< #
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano
# >>>>>END ADDED BY CNCHI INSTALLER<<<<< #

alias ll='ls -al'

# set styling for user and current directory on terminal
export PS1="[\w]\\$ \[$(tput sgr0)\]"

# avoid long commands overwriting line
shopt -s checkwinsize

