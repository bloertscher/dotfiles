# Set the bash prompt (to be sourced by bashrc)
source ~/.shell/plugins/git/git-completion.bash
source ~/.shell/plugins/git/git-prompt.bash

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi


##############################################################################
# Determine if color prompt will be used
##############################################################################

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
  xterm-color | xterm-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    color_prompt=yes
  else
    color_prompt=
  fi
fi


##############################################################################
# Set git prompt varibales
##############################################################################

#Shows staged changes (+), unstaged changes (*)
GIT_PS1_SHOWDIRTYSTATE=true

#Shows stashed changes ($)
GIT_PS1_SHOWSTASHSTATE=true

#Shows untracked files (%)
GIT_PS1_SHOWUNTRACKEDFILES=true

#Shows difference between HEAD and its upstream
#GIT_PS1_SHOWUPSTREAM=auto    # Shows behind (<), ahead (>), diverged (<>), (=)
GIT_PS1_SHOWUPSTREAM=verbose  # Also shows how many commit +/-

#Shows more info about identity of commit checked out in detached HEAD
#GIT_PS1_DESCRIBE_STYLE=contains    #relative to newer annotated tag
#GIT_PS1_DESCRIBE_STYLE=branch      #relative to newer tag or branch
#GIT_PS1_DESCRIBE_STYLE=describe    #relative to older annotated tag
GIT_PS1_DESCRIBE_STYLE=default     #exactly matching tag

#Shows a colored hint about the current dirty state
GIT_PS1_SHOWCOLORHINTS=true


##############################################################################
# Set the prompt
##############################################################################

# Show current branch in prompt if in git repo. 
if [ "$color_prompt" = yes ]; then
  PS1='${debian_chroot:+($debian_chroot)}\[\033[32m\]\h\[\033[00m\] \[\033[00;31m\]$(__git_ps1 "(%s)") \[\033[00;34m\]\W \[\033[00m\]\$ '
else
  PS1='${debian_chroot:+($debian_chroot)}\h \w $(__git_ps1 "(%s)")\$ '
fi

unset color_prompt force_color_prompt


##############################################################################
# Set the xterm title
##############################################################################

# If this is an xterm set the title to 'bash user@host: dir'
case "$TERM" in
  xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}bash \h: \w\a\]$PS1"
    ;;
esac

