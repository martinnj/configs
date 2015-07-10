# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
EDITOR=subl

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/home/martin/bin:/usr/local/cuda/bin
export EDITOR=emacs
export TERM="xterm-256color"
#export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/lib
#export JAVA_HOME=/usr/lib/jvm/java7-openjdk

# End of lines added by compinstall
bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# Alias'
#alias wpa="sudo wpa_supplicant -B -Dwext -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf"
#alias wpab="sudo wpa_supplicant -B -Dwext -i wlan0 -c /etc/wpa_supplicant/wpa_supplicant.conf"
alias git-yolo='git commit -am "`curl -s http://whatthecommit.com/index.txt`"'
#alias zshconfig="nano ~/.zshrc"
alias ls='ls --color=auto -F'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias f='find |grep'
alias c="clear"
#alias gemacs='emacsclient -c'
alias ..='cd ..'
#alias emacs='emacsclient -t'
alias rebox="dropbox stop
             dropbox start"

# Nice latex print
function nicetex() {pdflatex -halt-on-error -file-line-error "$@" | egrep '^.*:[0-9]+:' ; return 0;}

# Initialize powerline
#. /usr/share/zsh/site-contrib/powerline.zsh
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#export PYTHONPATH=/usr/lib/python3.3/site-packages
