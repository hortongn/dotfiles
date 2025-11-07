# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ -f ~/.bash_profile ]; then
  source ~/.bash_profile
fi

if [ -f /Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home ]; then
  export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/vagrant/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/vagrant/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/vagrant/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/vagrant/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

