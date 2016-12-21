# Check login shell
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias vi='vim'
alias e='vim'

alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add -A'
alias gl='git log'
alias gsl='git shortlog'
alias gb='git branch'

alias ..='cd ..'
alias ...='cd ../..'

alias vol='alsamixer'

# Git
export VISUAL=vim
export EDITOR="$VISUAL"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# PS1
export PS1="\[\033[31m\]\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# Node Version Manager
export NVM_DIR="/home/brendan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-atelier-forest.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
