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
    thefuck
    zoxide
    zsh-autosuggestions # Install from github repo
    zsh-syntax-highlighting # Install from github repo
)

zstyle ':omz:plugins:nvm' lazy yes

source $ZSH/oh-my-zsh.sh
source ~/.aliases

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups share_history

# Environment variables
export EDITOR='vim'
export VISUAL='vim'
