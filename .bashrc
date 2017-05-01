#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.git-prompt.sh
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

source ~/.bash_colors
# Terminal prompt
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
PROMPT_COMMAND='__git_ps1 "\[$BGreen\]\w" "\n\[$BGreen\]\A \[$White\]\$ " "\n\[$BGreen\][\[$BPurple\]%s\[$BGreen\]]"'

# Run aliases file
source ~/.aliases

export EDITOR='vim'
export VISUAL='vim'
