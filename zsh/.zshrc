# Load Oh My Zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="mbc"

plugins=(
    docker
    docker-compose
    dotnet
    git
    git-prompt
    npm
    nvm
    pyenv
    thefuck
    zoxide
    zsh-autosuggestions # Install from github repo
    zsh-syntax-highlighting # Install from github repo
)

zstyle ':omz:plugins:nvm' lazy yes

source $ZSH/oh-my-zsh.sh
source ~/.aliases

eval "$(atuin init zsh)"

# Environment variables
export EDITOR='vim'
export VISUAL='vim'
