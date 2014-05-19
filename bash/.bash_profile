# Couleurs du préfix du terminal
WHITE="\033[0;38m"
HI="\033[0;37m"
HII="\033[0;36m"
ORANGE="\033[0;33m"
GREEN="\033[0;32m"
RED="\033[0;31m"
RESET="\033[0m"

function parse_git_branch () {
    git status -sb 2> /dev/null | sed -e '/^[^#]/d' -e "s/^## \([^\.]*\)\.*\([^ ]*\)/`printf $GREEN`\1`printf $WHITE`...`printf $RED`\2/"
}

export CLICOLOR=1
export PS1="\[$WHITE\][ \[$HI\]\u \[$ORANGE\]\w\[$WHITE\] \$(parse_git_branch)\[$WHITE\] ] \[$RESET\]"

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
