export ZSH=/Users/brendan/.oh-my-zsh

# Zsh Config
ZSH_THEME="gallifrey"
HYPHEN_INSENSITIVE="true"

# Zsh Plugins
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# Git
alias gs="git status"
alias gc="git commit"
alias gcm="git commit -m"
alias gch="git checkout"
alias ga="git add"
alias gaa="git add -A"
alias gb="git branch"

# Docker
alias dc="docker-compose"

# Editor
export EDITOR='vim'

# Path
export PATH=$PATH:$GOPATH/bin
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Go
export GOPATH=$HOME/go

# Nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
