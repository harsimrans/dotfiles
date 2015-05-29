# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

PLATFORM='Unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   PLATFORM='Linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   PLATFORM='Mac'
elif [[ "$unamestr" == 'FreeBSD' ]]; then
   PLATFORM='FreeBSD'
fi

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="harsimran"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    brew
    #chucknorris
    fortune
    git
    git-extras
    github
    git-flow
    #gradle
    #heroku
    history-substring-search
    last-working-dir
    #lol
    osx
    pip
    pylint
    python
    sublime
    sudo
    web-search
    yum
    zsh-syntax-highlighting
    )

# User configuration
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
# paths at bottom of file

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

#PROMPT='%/ # '
RPROMPT='%w %t'

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
elif [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
elif [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

if [[ $PLATFORM == 'Linux' ]]; then
    export PATH=$PATH:$HOME/kde/bin
    export JAVA_HOME=/etc/alternatives/java_sdk
    export PATH=$JAVA_HOME/bin:$PATH
    #export ANDROID_HOME=$HOME/android-sdk

elif [[ $PLATFORM == 'Mac' ]]; then
    alias ls='ls --color=auto'
    export PATH=$PATH:$HOME/android-sdk/platform-tools
    export PATH=$PATH:$HOME/android-sdk/tools
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi

