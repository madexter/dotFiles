# stty -ixon # Disable ctrl-s and ctrl-q.
# shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
# export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

# [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" # Load shortcut aliases
# [ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

## Default aliases
alias ls='ls --color=auto'

## Applications' alias
alias youtube-script='$HOME/Codes/sh/youtube-script.sh'
alias curl2='$HOME/Codes/sh/curl2.sh'
alias mobsf='/opt/Mobile-Security-Framework-MobSF/run.sh'
alias msfconsole='msfconsole --quiet -x "color true"'
alias firefox_dev='$HOME/Firefox/firefox >> /dev/null 2>> /dev/null >> /dev/null &'
alias wireshark_bg='sudo wireshark >> /dev/null 2>> /dev/null &'
alias dirbuster_bg='dirbuster >> /dev/null 2>> /dev/null &'
alias burpsuite_bg='burpsuite >> /dev/null 2>> /dev/null &'
alias zaproxy_bg='zaproxy >> /dev/null 2>> /dev/null &'
alias google-chrome-stable_zap='google-chrome-stable --proxy-server=http://127.0.0.1:8079 >> /dev/null 2>> /dev/null &'
alias google-chrome-stable_burp='google-chrome-stable --proxy-server=http://127.0.0.1:8080 >> /dev/null 2>> /dev/null &'
alias libreoffice_bg='usr/local/bin/libreoffice >> /dev/null 2>> /dev/null &'
# alias 3elos=${cd /root/3elos_vpn && openvpn --config /root/3elos_vpn/turing-TCP4-443-msalvador-config.ovpn}

# Config files
alias bashconf="nvim ~/.bashrc"
alias zshconf="nvim ~/.zshrc"
alias nvimconf="nvim ~/.config/nvim/init.vim"
alias i3conf="nvim ~/.config/i3/config"
alias config='git --git-dir=$HOME/prs/dotfiles --work-tree=$HOME'

## System's alias
alias p="trizen"
alias upd="trizen -Syu --noinfo --noedit --needed"
alias cleanpacman="paccache -rk 1; paccache -ruk0"
alias cleanorphan="sudo pacman -Rns $(pacman -Qtdq)"
alias cleancache="~/.scripts/rmshit.py"
alias suroot='sudo -E -s' # Use oh-my-zsh with root user

## General's alias
alias df="df -h"
alias free="free -h"
alias weather="curl wttr.in"
alias restartkde="killall plasmashell && kstart5 plasmashell"
alias vi="vim"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
#alias wallsresize="mogrify -resize 1920\> ~/pix/walls/*"
#alias caps="xdotool key Caps_Lock"

# Some aliases from https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/common-aliases
# in order not to use the whole plugin
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias ldot='ls -ld .*'
alias lS='ls -1FSsh'
alias lart='ls -1Fcart'
alias lrt='ls -1Fcrt'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

## Exporting variables
export MSF_DATABASE_CONFIG='$HOME/.msf4/database.yml'
export EDITOR='vim'
export SUDO_EDITOR='rvim'
export NMAPDIR='$HOME/.nmap/scripts'
#export PYTHONDOCS='/usr/share/doc/python2/html'

## Functions
# Just write everything below in these functions
proxy () {
  export proxy_url=""
  export proxy_port=""
  export http_proxy=""
  export https_proxy=""  
  export ftp_proxy=""
  export rsync_proxy=""
  export no_proxy="localhost,localhost.localdomain,127.0.0.0/24"
  export all_proxy=""
}

localh () {
  export proxy_url=""
  export proxy_port=""
  export http_proxy=""
  export https_proxy=""
  export ftp_proxy=""
  export rsync_proxy=""
  export no_proxy="localhost,localhost.localdomain,127.0.0.0/24"
  export all_proxy=""
}

extract (){
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1;;
      *.7z) 7z x $1 ;;
      *) echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

## Default calls
