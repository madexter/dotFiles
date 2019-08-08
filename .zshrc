# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# Edit this variable if you want.
export ZSH="/home/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Here are my ZSH Themes that I like
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="bullet-train"
ZSH_THEME="af-magic"

# Configuration to disable audit to do compfix on zsh:
ZSH_DISABLE_COMPFIX="true"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# ZSH's history file
HISTFILE=~/.zsh_history

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"
DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitignore sudo extract z colored-man-pages copyfile copydir dirhistory history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Theme settings
BULLETTRAIN_PROMPT_ORDER=(
  context
  dir
  git
  status
)

# https://github.com/hkbakke/bash-insulter
#if [ -f /etc/bash.command-not-found ]; then
#    . /etc/bash.command-not-found
#fi

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Config files
# Moved to .profile to integrate bash and zsh shells
#alias zshconf="nvim ~/.zshrc"
#alias nvimconf="nvim ~/.config/nvim/init.vim"
#alias i3conf="nvim ~/.config/i3/config"
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
#alias config='/usr/bin/git --git-dir=$HOME/prs/dotfiles --work-tree=$HOME'

# System's alias
# Moved to .profile to integrate bash and zsh shells
#alias p="trizen"
#alias upd="trizen -Syu --noinfo --noedit --needed"
#alias cleanpacman="paccache -rk 1; paccache -ruk0"
#alias cleanorphan="sudo pacman -Rns $(pacman -Qtdq)"
#alias cleancache="~/.scripts/rmshit.py"
#alias suroot='sudo -E -s' # Use oh-my-zsh with root user

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Bindkeys
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# Sources' files
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/ghost/.oh-my-zsh/plugins/history-substring-search/history-substring-search.zsh
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
