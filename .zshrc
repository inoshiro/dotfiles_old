# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kenjiro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

RPROMPT=[%~]
export HOST_SAKURA="49.212.92.65"

# for Python
export PYTHONSTARTUP=~/.pythonstartup
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENV_USE_DISTRIBUTE=1
source /usr/local/bin/virtualenvwrapper.sh

alias ls='ls --color'
alias ll='ls -la'

alias scls='screen -ls'
alias scname='screen -S'
alias screj='screen -r'
