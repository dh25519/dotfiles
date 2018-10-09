#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -x $(command -v fzf) ]; then

    if [ -x $(command -v fd) ]; then
        export FZF_DEFAULT_COMMAND="fd --follow"
        export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
        export FZF_ALT_C_COMMAND="fd --type=d --follow"
    fi

    if [ -d /usr/share/fzf ]; then
        . /usr/share/fzf/completion.bash
        . /usr/share/fzf/key-bindings.bash
    elif [ -d $HOME/.fzf/shell ]; then
        . $HOME/.fzf/shell/completion.bash
        . $HOME/.fzf/shell/key-bindings.bash
    fi
fi

. ~/.bash_aliases

export PS1="[\u@\h \W\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/  \1/')] \\$ "
