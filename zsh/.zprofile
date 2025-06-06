export COMPOSE_PARALLEL_LIMIT=1
export LESS="--no-init --quit-if-one-screen -R"
export PATH="$PATH:$HOME/bin"

eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PATH:$PYENV_ROOT/bin"
eval "$(pyenv init --path)"

# Added by Toolbox App
export PATH="$PATH:/Users/michael/Library/Application Support/JetBrains/Toolbox/scripts"


# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
