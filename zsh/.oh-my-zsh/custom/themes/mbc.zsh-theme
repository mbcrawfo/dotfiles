autoload -Uz add-zsh-hook

prompt_detail() {
    print -rP " %B%F{green}%~"

    GIT_INFO=$(git_super_status)
    if [[ $GIT_INFO ]]; then
        print -rP $GIT_INFO
    fi
}

add-zsh-hook precmd prompt_detail

PROMPT="%B%F{cyan}%D{%H:%M} %F{white}$%f%b "
RPROMPT=""

ZSH_THEME_GIT_PROMPT_PREFIX="%B%F{green}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{green}]%f%b"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%B%F{green}|"
ZSH_THEME_GIT_PROMPT_BRANCH="%B%F{magenta}"
ZSH_THEME_GIT_PROMPT_STAGED="%B%F{yellow}●%G"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%B%F{red}✖%G"
ZSH_THEME_GIT_PROMPT_CHANGED="%B%F{blue}✚%G"
ZSH_THEME_GIT_PROMPT_DELETED="%B%F{red}-%G"
ZSH_THEME_GIT_PROMPT_BEHIND="%B%F{red}↓%G"
ZSH_THEME_GIT_PROMPT_AHEAD="%B%F{blue}↑%G"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%B%F{yellow}…%G"
ZSH_THEME_GIT_PROMPT_STASHED="%B%F{blue}⚑%G"
ZSH_THEME_GIT_PROMPT_CLEAN="%B%F{green}✔%G"
ZSH_THEME_GIT_PROMPT_UPSTREAM_SEPARATOR="->"

ZSH_THEME_GIT_SHOW_UPSTREAM=1
