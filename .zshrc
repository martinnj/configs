# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
# We only use oh-my-zsh for non-root!
if [ $(id -u) != 0 ]; then
  export ZSH="/home/martin/.oh-my-zsh"

  # Set name of the theme to load --- if set to "random", it will
  # load a random theme each time oh-my-zsh is loaded, in which case,
  # to know which specific one was loaded, run: echo $RANDOM_THEME
  # See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

  ZSH_THEME="agnoster"

  # Which plugins would you like to load?
  # Standard plugins can be found in ~/.oh-my-zsh/plugins/*
  # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
  # Example format: plugins=(rails git textmate ruby lighthouse)
  # Add wisely, as too many plugins slow down shell startup.
  plugins=(
    kubectl
    docker
    docker-compose
    ansible
    python
    pipenv
    git
  )
else
  # Root has it's own installation for security.
  export ZSH="/root/.oh-my-zsh"
  # Use a simple theme and disable all plugins.
  ZSH_THEME="gentoo"
  plugins=()

fi

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='nano'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# Customize to your needs...
#export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl:/home/martin/bin:/usr/local/cuda/bin

# Path components for different hosts.
export PATH=$PATH:/usr/locl/bin
export PATH=$PATH:/home/martin/bin
export PATH=$PATH:/home/martin/.local/bin
# export PATH=$PATH:/home/ec2-user/bin
# export PATH=$PATH:/home/ec2-user/.local/bin

export TERM="xterm-256color"
#export TERM="rxvt-unicode-256color"
#export LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/lib
#export JAVA_HOME=/usr/lib/jvm/java7-openjdk

# Keybindings for special keys
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

# Alias' for Martins stuff.
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
#alias rebox="dropbox stop
#             dropbox start"
alias repulse="pulseaudio --kill
               sleep 2
               pulseaudio --start -D"
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias please='sudo'

# Restores filepermissions to prevent git from loosing it's cool.
alias git-permission-reset='git diff -p -R --no-color | grep -E "^(diff|(old|new) mode)" --color=never | git apply'

# Git updating luxury
alias gitget="git stash --all
              git pull --rebase
              git stash pop"

# Nice latex print
function nicetex() {pdflatex -halt-on-error -file-line-error "$@" | egrep '^.*:[0-9]+:' ; return 0;}

# Initialize powerline
#. /usr/share/zsh/site-contrib/powerline.zsh
#. /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#export PYTHONPATH=/usr/lib/python3.3/site-packages

# Hack to disable keyboard beep, Linux ignores UEFI settings :(
# Doesn't work for root, so let's not apply.
xset -b
xset b 0 0 0
set bell-style nonebash

# Set default AWS profile
AWS_DEFAULT_PROFILE="default"

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator dropbox background_jobs history battery time)
source /usr/share/zsh-theme-powerlevel10k/powerlevel9k.zsh-theme
