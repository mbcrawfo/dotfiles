# Load nvm before the interactive guard so non-interactive shells
# (scripts, editors, agents) also get node on PATH.
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export PATH=$PATH:"/c/Program Files/Microsoft Visual Studio/18/Professional/MSBuild/Current/Bin/amd64"
export PATH=$PATH:"$HOME/.dotnet/tools"
export PATH=$PATH:"$HOME/.local/bin"
export PATH=$PATH:"$HOME/bin"

export EDITOR='vim'
export VISUAL='vim'
export COMPOSE_PARALLEL_LIMIT=1
export LESS="--no-init --quit-if-one-screen -R"

source ~/.bashrc
