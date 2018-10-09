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

esc=$(printf '\033')
export PS1="\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/$esc[01;33m\1$esc[00m/')\\$ "
