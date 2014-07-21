#.bashrc 

force_colored_prompt=yes

alias cls="clear"
alias eer="exit"
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#GO related
export GOPATH=$HOME/Documents/golang/raum_1

#Set normal paths
PATH='/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/go/bin:/usr/X11/bin:/Users/stefan/bin'
export PATH

# Set additional paths
PATH=/Users/stefan/:$GOPATH/bin/:$PATH
export PATH
