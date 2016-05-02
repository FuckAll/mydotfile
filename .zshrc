#on-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# COMPLETION_WAITING_DOTS="true"

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
plugins=(autojump bower brew  git colored-man sublime)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# 路径别名 {{{
#hash -d WWW="/srv/http/" # use http instead
hash -d dt="/Users/kongfu/duitang/"
hash -d code="/Users/kongfu/duitang/git/"
hash -d datacenter="/Users/kongfu/duitang/git/datacenter/"
hash -d faba="/Users/kongfu/duitang/git/faba/"
hash -d my="/Users/kongfu/duitang/KongFu"
# }}}
#LANG
LANG="en_US.UTF-8"
LC_COLLATE="zh_CN.UTF-8"
LC_CTYPE="zh_CN.UTF-8"
LC_MESSAGES="zh_CN.UTF-8"
LC_MONETARY="zh_CN.UTF-8"
LC_NUMERIC="zh_CN.UTF-8"
LC_TIME="zh_CN.UTF-8"
LC_ALL="zh_CN.UTF-8"
###########Sublime Text 2##########
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias nano="subl"
alias gst="git status"
alias gpl="git pull"
alias gd="git diff"
alias glog='git log -20 --graph  --pretty=format:"%h        %an        %ar        %s"'
alias gadd='git add'
alias gcom='git commit -m'
alias gpsh='git push'
alias p='proxychains4'
alias bee='/Users/kongfu/duitang/git/github/go-study/study01/bin/bee'
#alias ssh='ssh -A'
alias s200='ssh -A 10.1.2.200'
alias s181='ssh -A 10.1.1.181'


alias m='tldr'
alias pythonenv='source /Users/kongfu/duitang/git/pythonenv/bin/activate'
alias jumpenv='source /Users/kongfu/duitang/git/jumpenv/bin/activate'
set -o vi 
ssh-add /Users/KongFu/.ssh/id_rsa
source /Users/kongfu/duitang/git/pythonenv/bin/activate
#export EDITOR="subl"
export GOPATH=/Users/KongFu/BaseEnv/:/Users/KongFu/17mei/
export GOBIN=/Users/KongFu/BaseEnv/bin/
#export GOROOT=/Users/KongFu/17mei/:/Users/KongFu/BaseEnv/
alias de='docker exec -t -i'
alias ds='docker start'
alias dstop='docker stop'
alias dps='docker ps -a'
alias digs='docker images'
alias drun='docker run -t -i'
alias drunrm='docker run -t -i --rm'
alias dstopa='docker stop $(docker ps -q)'
alias drma='docker rm $(docker ps -a -q)'
alias dc='docker-compose'

export PATH=$PATH:$GOBIN

export EDITOR="vim"
