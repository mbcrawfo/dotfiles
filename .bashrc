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
PS1="\[$BGreen\]\u@\h: \[$BBlue\]\W\[$BPurple\]\$( __git_ps1)\[$BWhite\] \$ \[$White\]"

# Run aliases file
source ~/.aliases

export EDITOR='vim'
export VISUAL='vim'
