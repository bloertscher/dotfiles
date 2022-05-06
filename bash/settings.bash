# export OS_SYS=$(uname -s)
# export OS_REL=$(uname -r | sed -e 's;[^0-9]; ;g')

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=200
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Adjust dircolors
# if [ "$OS_SYS" == "Linux" ] && [ -e ${HOME}/.dotfiles/misc/dircolors.256dark ]
# then
#   eval $(dircolors -b "${HOME}/.dotfiles/misc/dircolors.256dark")
# fi

EDITOR=vim
