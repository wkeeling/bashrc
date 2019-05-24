export EDITOR=vim
alias vi=vim

# Add a datestamp to every entry in the bash history.
export HISTTIMEFORMAT="%d/%m/%y %T "

# Make the history very large and write out after every command
HISTFILESIZE=100000
HISTSIZE=100000
# Keep the history free of duplicate entries.
export HISTCONTROL=ignoredups:erasedups
#export HISTFILE=~/.bash_eternal_history

# Append to history file on shell exit
shopt -s histappend

#PROMPT_COMMAND='history -a;history -n'

# Enable reverse history search.
stty -ixon

# Allow access to the clipboard through piping.
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Work around mis-spellings
shopt -s cdspell

# Move to folder if command doesn't exist
shopt -s autocd

# Perform any expansion of variables, tildes
shopt -s direxpand

# Display command before automatically running it
#shopt -s histverify

# Docker cleanup
dcleanup(){
    docker rm -v $(docker ps --filter status=exited -q 2>/dev/null) 2>/dev/null
    docker rmi $(docker images --filter dangling=true -q 2>/dev/null) 2>/dev/null
}
