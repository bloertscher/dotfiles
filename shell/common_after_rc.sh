# Allow local customizations in the ~/.shell_local_after file
if [ -f ~/.shell_local_after ]; then
    source ~/.shell_local_after
fi

# SSH agent
if which ssh-agent 1>/dev/null 2>&1; then
    source ~/.shell/ssh-agent.sh
fi
