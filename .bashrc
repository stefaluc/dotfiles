# for 256 colors with tmux
export TERM=screen-256color

alias ls='ls --color=always'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# search for file with fzf then open in vim
alias vifzf='vim $(fzf --height 40%)'

# colorize grep output
export GREP_OPTIONS='--color=always'

alias gs="git status"

set -o vi
