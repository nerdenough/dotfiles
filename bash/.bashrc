# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias ls='ls --color=auto'
alias vim='nvim'
alias vi='nvim'
alias e='nvim'

alias ga='git add'
alias gaa='git add -A'
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log'
alias gsl='git shortlog'

alias ns='npm start'
alias nt='npm test'

alias ..='cd ..'
alias ...='cd ../..'
alias src='cd ~/workspace'

# NVM
export NVM_DIR="/home/brendan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Editor
export VISUAL=nvim
export EDITOR="$VISUAL"

# PS1
export PS1="\[\033[31m\]\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
