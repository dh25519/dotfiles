#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export FZF_DEFAULT_COMMAND="fd --follow"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --follow"

source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
source ~/.bash_aliases

export PS1="[\u@\h \W\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/  \1/')] \\$ "
