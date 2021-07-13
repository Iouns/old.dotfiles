# Env vars
set -x AWS_REGION eu-west-1
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x EDITOR nvim

# PATH
fish_add_path $HOME/.krew/bin

# Fancy commands
alias curl='curlie'
alias c='codium'
alias vim='nvim'
alias k='kubectl'
alias grep='rg'
alias dig='dog'
alias host='dog'
alias top='glances'
#alias ll='exa -l'
#alias ls='exa'
#alias la='exa -lra --time modified'
alias find='fd'
alias cat='bat'

# Useful aliases
alias awslogin='saml2aws login --force && eval (saml2aws script)'

# Nord theme
eval (dircolors -c ~/.dircolors/dircolors)
set -x BAT_THEME Nord

# Completions
flux completion fish | source
zoxide init fish | source
starship init fish | source
yq shell-completion fish | source
helm completion fish | source

