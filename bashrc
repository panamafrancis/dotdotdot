#.bashrc 

# we want ls with colours
alias ls="ls -G"

# Go To Work
alias gtw="cd ~/code/go/src/github.com/fraugster"

# clear screen
alias cls='printf "\033c"'

# exit
alias er="exit"

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#GO related
export GOPATH=$HOME/code/go
export GOAPPENGINEPATH=$HOME/go_appengine

#Set normal paths
PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/go/bin:/usr/X11/bin:/Users/stefan/bin'
export PATH

# Set additional paths
PATH=$GOPATH/bin:$GOAPPENGINEPATH:$PATH
export PATH

# Ocaml stuff
eval `opam config env`

# Docker environment initialisation
eval "$(docker-machine env dev)"

