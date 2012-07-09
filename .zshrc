# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kenjiro/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload colors
colors

setopt append_history
setopt extended_history
setopt share_history
function history-all { history -E 1 }

bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward
bindkey '^R' history-incremental-search-backward

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/X11/bin
export MANPATH=/opt/local/man:$MANPATH
PROMPT="%{$fg[red]%}%m%{$fg[default]%}%# "
RPROMPT="%{$fg[cyan]%}[%~]%{$fg[default]%}"
export LSCOLORS=exfxcxdxBxegedabagacad

# for Python
# export PYTHONSTARTUP=~/.pythonstartup
export VIRTUALENV_USE_DISTRIBUTE=1
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
alias ve='virtualenv --no-site-packages --distribute'
alias mkve='mkvirtualenv --no-site-packages --distribute'

#alias ls='ls -G'
alias ls='ls --color'
alias ll='ls -la'

alias scls='screen -ls'
alias scname='screen -S'
alias scres='screen -r'

# sakura internet
USER_SAKURA=a-space-odyssey
HOST_SAKURA=$USER_SAKURA.sakura.ne.jp
alias ssh2sakura="ssh $USER_SAKURA@$HOST_SAKURA"
alias ssh2sun="ssh kenjiro@192.168.1.250"
function scp2sakura() {
        local -a files; files="${1}"
        local -a destDir; destDir="${2}"
        scp -r ${files} $USER_SAKURA@$HOST_SAKURA:${destDir}
}
