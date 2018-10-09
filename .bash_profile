#########################################################################
#       ~/.bash_profile: Personal initialisation script for Bash        #
#########################################################################
#
# This script file is sourced by bash(1) for login shells.
#
# When a login shell starts, the following script files are sourced, in
# this order:
#
#   /etc/profile          - run by bash(1)
#   /etc/profile.d/*.sh   - additional profile scripts
#   /etc/bash.bashrc      - sourced by /etc/profile file (only for bash(1))
#   $HOME/.bash_profile   - this file
#   $HOME/.profile        - sourced by this file (if unchanged)
#   $HOME/.bashrc         - sourced by this file (if unchanged)
#
# When a normal (non-login) bash(1) shell starts, the following files are
# sourced:
#
#   /etc/bash.bashrc      - run by bash(1)
#   $HOME/.bashrc         - run by bash(1)

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc
