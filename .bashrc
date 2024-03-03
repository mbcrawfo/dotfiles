#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if test -d /c/ProgramData/nvm; then
  PATH=$PATH:/c/ProgramData/nvm
fi

if test -d "/c/Program Files/nodejs"; then
  PATH=$PATH:"/c/Program Files/nodejs"
fi

source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.bash_colors
source ~/.aliases

# Terminal prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
PROMPT_COMMAND='__git_ps1 "\[$BGreen\]\w" "\n\[$BGreen\]\A \[$White\]\$ " "\n\[$BGreen\][\[$BPurple\]%s\[$BGreen\]]"'

# Save timestamp in the history file
HISTTIMEFORMAT="%F %T "
# Don't store duplicates
HISTCONTROL=ignoredups
# Allow "sharing" of history between instances
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a"

export EDITOR='vim'
export VISUAL='vim'

