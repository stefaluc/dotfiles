# make bashrc work on tmux start
# https://unix.stackexchange.com/questions/320465/new-tmux-sessions-do-not-source-bashrc-file
source ~/.bashrc

export TERM=xterm-256color

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# search for file with fzf then open in vim
alias vifzf='vim $(fzf --height 40%)'

# colorize grep output
export GREP_OPTIONS='--color=always'

# run git autocomplete script
# if [ -f ~/.git-completion.bash ]; then
#   . ~/.git-completion.bash
# fi

alias gs="git status"

export PATH=$PATH:/usr/local/go/bin
