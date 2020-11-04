# ~/.zshrc
# Josh Wright
# 
# Plugins:
# zsh syntax highlighting
#
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/josh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Lines added by me, Josh Wright

# Enable colors
autoload -U colors && colors

HOSTCOLOR=10
PROMPT="%F{8}[%f%F{10}%n@%f%F{$HOSTCOLOR}%m%f %F{11}%~%f%F{8}]%f"$'\n'"%# "

# colors
alias ls='exa'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'

# aliases
#alias vim=nvim
alias 'xclip-c'='xclip -selection clipboard'

# Syntax highlighting (must be last)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Colored less (man)
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# End of lines added by Josh Wright and eof probably

