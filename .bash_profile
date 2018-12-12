function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\n\1/'
}

NO_COLOR="\[$(tput sgr0)\]\[\033[38;5;15m\]"
YELLOW="\[$(tput sgr0)\]\[\033[38;5;11m\]"
HOST_COLOR="\[\033[38;5;2m\]"
if [ -f /home/vagrant/.bash_profile ]; then
  HOST_COLOR="\[\033[38;5;4m\]"
fi

#export PS1="$HOST_COLOR\u@\h$NO_COLOR:\W$YELLOW\$(parse_git_branch)$NO_COLOR\\$\[$(tput sgr0)\] "
export PS1="$YELLOW\$(parse_git_branch)\n$HOST_COLOR\u@\h$NO_COLOR:\W$NO_COLOR\\$\[$(tput sgr0)\] "

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Add RVM to PATH for scripting
export PATH=$PATH:$HOME/.rvm/bin

# For Fits
export PATH=$PATH:~/fits-1.0.5

# For Solr/Fedora scripts
export PATH=$PATH:~/Development/hortongn/hydra_wrappers

# Add my bin directory to path
export PATH=$PATH:/Users/hortongn/Google\ Drive/Apps/bin

# Git auto-completion
source ~/.git-completion.bash

# For homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Set default editor
export EDITOR='vim'

# Fix GPG password prompt
export GPG_TTY=$(tty)

# Directories
export hyrax=~/Development/samvera/hyrax2
export scholar=~/Development/uclibs/scholar/scholar_uc
export ucrate=~/Development/uclibs/ucrate
export gems=$(bundle show --paths)

#Aliases
alias rs='rails server -b 0.0.0.0'
alias rc='bundle exec rails console'
alias solrdev='bundle exec solr_wrapper -d solr/config/ --collection_name hydra-development -p 8983 --persist'
alias solrtest='bundle exec solr_wrapper -d solr/config/ --collection_name hydra-test -p 8985'
alias fcdev='bundle exec fcrepo_wrapper -p 8984'
alias fctest='bundle exec fcrepo_wrapper -p 8986'

if [[ ! $TERM =~ screen ]]; then
  if [ -f /home/vagrant/.bash_profile ]; then
    cd ~/Development
    # /usr/local/bin/tmux
  fi
fi
