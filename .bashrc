#aliases
alias ls="ls -FC"
alias kp="ps auxwww"
alias toss="rm -rf"
alias extip="curl icanhazip.com"

#colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#bash completion

if [ -f ~/.git-completion.bash ]; then
	source ~/.git-completion.bash
fi

SSH_ENV=$HOME/.ssh/environment
   
# start the ssh-agent
function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}
   
if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt
