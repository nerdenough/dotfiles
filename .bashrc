# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias vi='vim'

# Base16 Shell
BASE16_SHELL="$HOME/workspace/dotfiles/shell/base16-duotone-dark-amethyst-syntax.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Node Version Manager
export NVM_DIR="/home/brendan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Android
PATH=$PATH:/home/brendan/.android/sdk/tools
PATH=$PATH:/home/brendan/.android/sdk/platform-tools

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export VISUAL=vim
export EDITOR="$VISUAL"

# PS1
export PS1="\[\033[31m\]\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Heroku
PATH="$PATH:/usr/local/heroku/bin"
PATH="$PATH:/home/brendan/.config/composer"
