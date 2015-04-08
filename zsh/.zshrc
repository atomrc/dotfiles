HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
autoload -U colors && colors
setopt autocd

bindkey -v
bindkey '^r' history-incremental-search-backward

alias ll='ls -al'

for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
    eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'

function parse_git_branch () {
    git rev-parse --git-dir &> /dev/null
    if [ $? != 0 ]; then
        return;
    fi
    local git_status="$(git status -sb -uno 2> /dev/null | sed -E -e '/^[^#]/d')";
    local branch="$(echo $git_status | sed -E -e "s/^## ([^\.]*).*$/\1/")";
    if [[ $git_status =~ "ahead" ]]; then
        local ahead=" ${WHITE}$(echo $git_status | sed -E -e "s/^.*ahead ([0-9]+).*$/\1/")↑";
    fi
    if [[ $git_status =~ "behind" ]]; then
        local behind=" ${RED}$(echo $git_status | sed -E -e "s/^.*behind ([0-9]+).*$/\1/")↓";
    fi
    if [[ $git_status =~ "..." ]]; then
        local state=" ⚡";
    fi
    echo " ${GREEN}${branch}${state}${ahead}${behind}${RESET}";
}

setopt PROMPT_SUBST
PROMPT='[ ${YELLOW}%2c$(parse_git_branch)${RESET} ] '
