# Vim
alias vim="mvim -v"
alias vi="vim"

# NVM
export NVM_DIR="/Users/brendan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Bash Completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/scripts/base16-duotone-dark-forest-syntax.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# Git
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export VISUAL=vim
export EDITOR="$VISUAL"

# PS1
export PS1="\[\033[31m\]\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
