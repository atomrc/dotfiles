# Couleurs du préfix du terminal
WHITE="\[\e[0;38m\]"
GRAY="\[\e[0;37m\]"
HII="\[\e[0;36m\]"
ORANGE="\[\e[0;33m\]"
GREEN="\[\e[0;32m\]"
RED="\[\e[0;31m\]"
RESET="\[\e[0m\]"

function parse_git_branch () {
    local git_status="$(git status -sb 2> /dev/null | sed -E -e '/^[^#]/d')"
    local branch="$(echo $git_status | sed -E -e "s/^## ([^\.]*).*$/\1/")"
    git rev-parse --git-dir &> /dev/null
    if [ "$?" -ne 0 ]; then
        echo ""
        return
    fi
    if [[ $git_status =~ "ahead" ]]; then
        local ahead=" $WHITE$(echo $git_status | sed -E -e "s/^.*ahead ([0-9]+).*$/\1/")↑"
    fi
    if [[ $git_status =~ "behind" ]]; then
        local behind=" $RED$(echo $git_status | sed -E -e "s/^.*behind ([0-9]+).*$/\1/")↓"
    fi
    if [[ $git_status =~ "..." ]]; then
        local state=" ⚡"
    fi
    echo " $GREEN$branch$state$ahead$behind"
}

export CLICOLOR=1
function prompt_func () {
    prompt="$RESET[ $ORANGE\w`parse_git_branch`$RESET ] "
    PS1="${prompt}"
}
PROMPT_COMMAND=prompt_func

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
