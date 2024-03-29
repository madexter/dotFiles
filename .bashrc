#
# ~/.bashrc
#

#!/bin/bash
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# sources
source /usr/share/nvm/init-nvm.sh

# profiles
[[ -f ~/.profile  ]] && . ~/.profile
