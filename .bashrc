export EDITOR=vim
alias vi=vim
alias dev='cd /home/will/development'

# Virtualenv Wrapper Config
export WORKON_HOME=$HOME/development/environments
export PROJECT_HOME=$HOME/development/workspace
source /usr/local/bin/virtualenvwrapper.sh

# Add a datestamp to every entry in the bash history.
export HISTTIMEFORMAT="%d/%m/%y %T "

# Make the history unlimited and write out after every command                                                                                                                                                     
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoredups:erasedups  
export HISTFILE=~/.bash_eternal_history
shopt -s histappend  
PROMPT_COMMAND='history -a;history -n'

# Enable reverse history search.
stty -ixon

# Keep the history free of duplicate entries.
export HISTCONTROL=ignoreboth:erasedups

# Allow access to the clipboard through piping.
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
