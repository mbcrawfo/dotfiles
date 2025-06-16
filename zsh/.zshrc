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

# Automatic updates interfere with Jetbrains IDEs reading the environment
if [ "$INTELLIJ_ENVIRONMENT_READER" ]; then
    zstyle ':omz:update' mode disabled
fi

source $ZSH/oh-my-zsh.sh
source ~/.aliases

eval "$(atuin init zsh)"

# Automatically set node version when entering a directory with an .nvmrc file
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
