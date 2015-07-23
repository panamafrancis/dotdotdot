#.zshrc

alias cls="clear"
alias er="exit"

#GO related
export GOPATH=$HOME/code/go

#Set normal paths
PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/go/bin:/usr/X11/bin:/Users/stefan/bin'
export PATH

# Set additional paths
PATH=/Users/stefan/:$GOPATH/bin/:$PATH
export PATH

#Set Appengine stuff
PATH=$HOME/Documents/golang/go_appengine:$PATH
export PATH

# Set the prompt
autoload -U promptinit
promptinit
PROMPT="%n @ %~ $ " 
RPROMPT=""

