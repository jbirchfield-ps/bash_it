#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='sexy'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

export EDITOR='/usr/bin/mate -w'
export GIT_EDITOR='/usr/bin/mate -w'

# Load Bash It
source $BASH_IT/bash_it.sh

export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
setjdk() {
	export JAVA_HOME=$(/usr/libexec/java_home -v $1)
}

export DOCKER_TLS_VERIFY="1"
export DOCKER_HOST="tcp://192.168.99.100:2376"
export DOCKER_CERT_PATH="/Users/jbirchfield/.docker/machine/machines/default"
export DOCKER_MACHINE_NAME="default"
