export EDITOR=vim
alias vi=vim
alias dev='cd /home/will/development'

# Virtualenv Wrapper Config
export WORKON_HOME=$HOME/development/environments
export PROJECT_HOME=$HOME/development/workspace
source /usr/local/bin/virtualenvwrapper.sh

# Add a datestamp to every entry in the bash history.
export HISTTIMEFORMAT="%d/%m/%y %T "

# Share bash history across multiple sessions.
export HISTCONTROL=ignoredups:erasedups  
shopt -s histappend  
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
