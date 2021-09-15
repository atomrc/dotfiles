HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
autoload -U colors && colors
setopt autocd

bindkey -v
bindkey '^r' history-incremental-search-backward

export PATH="/usr/local/bin:$PATH"

alias ll='ls -al'
alias g='git'

eval "$(starship init zsh)"
