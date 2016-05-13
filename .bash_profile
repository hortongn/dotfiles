function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
 
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"
 
PS1="$GREEN\u@\h$NO_COLOR:\W$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

# For Fits
export PATH=$PATH:~/Development/fits

# Add my bin directory to path
export PATH=$PATH:/Users/hortongn/Google_Drive/bin

# Git auto-completion
source ~/.git-completion.bash

# For homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

/usr/local/bin/tmux

