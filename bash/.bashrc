# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'

# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# ALIASES
alias ll='ls -AlFh --color'
# webtorrent, start vlc by default
alias pf='webtorrent --vlc --not-on-top'
# tmux config with default color
alias tmux="env TERM=xterm-256color tmux"

# loading bash_aliases if present
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# loading bash_path if present
if [ -f ~/.bash_path ]; then
    source ~/.bash_path
fi

# git completion
if [ -f ~/.git-completion.bash ]; then
    source ~/.git-completion.bash
fi

if [ -f ~/.bash_powerline.sh ]; then
    source ~/.bash_powerline.sh
fi
export VISUAL="nvim"
