# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="blinks"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Load lesspipe
[ -x /usr/bin/lesspipe.sh  ] && eval "$(lesspipe.sh)"

# Load ls colors
[ -x /usr/bin/dircolors ] && eval "$(dircolors $HOME/.dircolors)"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby gem rbenv brew bundler rake vagrant tmux capistrano svn docker rsync aws)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

# rbenv
[ -d $HOME/.rbenv/bin ] && export PATH="$HOME/.rbenv/bin:$PATH" && eval "$(rbenv init -)"

# Solarized compliant grep color
export GREP_OPTIONS='--color=auto' GREP_COLOR='31'
export EDITOR="vim"
export LANG="en_US.UTF-8"
export TERM="xterm-256color"
