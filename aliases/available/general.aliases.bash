cite about-alias
about-alias 'general aliases'

# List directory contents
alias sl=ls
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'

alias _="sudo"

if [ $(uname) = "Linux" ]
then
  alias ls="ls --color=auto"
fi
which gshuf &> /dev/null
if [ $? -eq 0 ]
then
  alias shuf=gshuf
fi

alias c='clear'
alias k='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

alias q='exit'

alias irc="$IRC_CLIENT"

alias rb='ruby'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias piano='pianobar'

alias ..='cd ..'         # Go up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
alias	md='mkdir -p'
alias	rd='rmdir'

# Display whatever file is regular file or folder
catt() {
  for i in "$@"; do
    if [ -d "$i" ]; then
      ls "$i"
    else
      cat "$i"
    fi
  done
}

#only show the nun-commented entries in a file
alias nocomment='grep -Ev '\''^(#|$)'\'''

#show the largest 10 subdirectories in the current directory
alias ducks='du -ck | sort -nr | head'

alias tf='tail -f '
# grep in *.java files
alias find_in_java='find . -iname "*.java" | xargs grep -ni --color=always '
# grep in *.scala files
alias find_in_scala='find . -iname "*.scala" | xargs grep -ni --color=always '
# grep in *.* files
alias find_in_any='find . -iname "*.*" | xargs grep -ni --color=always '
#finds that help me cleanup when hit the limits
alias bigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 5000) print \$0 }'"
alias verybigfiles="find . -type f 2>/dev/null | xargs du -a 2>/dev/null | awk '{ if ( \$1 > 500000) print \$0 }'"
#show only my procs
alias psme='ps -ef | grep $USER --color=always '
#grep ps
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'

# grep all files in the current directory
function _grin() { grep -rnI --color $1 .;}
alias grin=_grin
# find file by name in current directory
function _fn() { find . -name $1;}
alias fn=_fn
