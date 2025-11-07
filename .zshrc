#PS1='%n@MacBook %1~ %# '

autoload -Uz vcs_info
precmd() { vcs_info }
setopt prompt_subst

zstyle ':vcs_info:git:*' formats ' [%b]'
zstyle ':vcs_info:*' enable git

PS1='%n@Macbook %1~${vcs_info_msg_0_} %# '



# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/glen.horton/.lmstudio/bin"
# End of LM Studio CLI section

