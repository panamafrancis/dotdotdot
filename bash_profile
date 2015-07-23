#bash profile
#just points to my ~/.bashrc

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# OPAM configuration
. /Users/stefan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
source '/Users/stefan/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/stefan/google-cloud-sdk/completion.bash.inc'
