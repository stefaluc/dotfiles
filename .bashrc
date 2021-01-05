# for 256 colors with tmux
export TERM=screen-256color

#alias ls='ls --color=always'
alias python=python3
alias pip=pip3

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# search for file with fzf then open in vim
alias vifzf='vim $(fzf --height 40%)'

# colorize grep output
export GREP_OPTIONS='--color=always'

alias gs="git status"

set -o vi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# python virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
