# Couleurs du préfix du terminal
WHITE="\e[0;38m"
GRAY="\e[0;37m"
HII="\e[0;36m"
ORANGE="\e[0;33m"
GREEN="\e[0;32m"
RED="\e[0;31m"
RESET="\e[0m"

function parse_git_branch () {
    git status -sb 2> /dev/null | sed -E -e '/^[^#]/d' -e "s/^## ([^\.]*)(\.\.\.)?([^ ]*)/\1\2\3/"
}

export CLICOLOR=1
export PS1="\[$WHITE\][ \[$GRAY\]\u \[$ORANGE\]\w \[$GREEN\]\$(parse_git_branch) \[$RESET\]] "

# loading bash_aliases if present
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# loading bash_path if present
if [ -f ~/.bash_path ]; then
    source ~/.bash_path
fi

# loading bash_path if present
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
