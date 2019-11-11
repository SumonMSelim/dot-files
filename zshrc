# Path to your oh-my-zsh installation.
export ZSH="/Users/muhammadsumonmollaselim/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_DISABLE_COMPFIX=true

# User configuration
export TERM="xterm-256color"
export SHELL="/bin/zsh"
export EDITOR="nano"
export LANG=en_US.UTF-8
export DEFAULT_USER="SumonMSelim"
export ARCHFLAGS="-arch x86_64"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path configuration
export PATH=/usr/local/sbin:$PATH

# powerlevel9k customizations
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_first_and_last"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time battery)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

# use case-sensitive completion.
CASE_SENSITIVE="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# command execution time stamp shown in the history command output.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(zsh-autosuggestions osx brew composer common-aliases copyfile web-search zsh-syntax-highlighting)

test -f $ZSH/oh-my-zsh.sh && source $ZSH/oh-my-zsh.sh
test -e $HOME/.iterm2_shell_integration.zsh && source $HOME/.iterm2_shell_integration.zsh

# Aliases
alias zshrc="nano ~/.zshrc"
alias artisan="php artisan"
alias idehelper='artisan clear-compiled && artisan ide-helper:generate && artisan ide-helper:meta'
alias idemodel='artisan clear-compiled && artisan ide-helper:models'

# Git
alias gcd="git checkout develop"
alias gnb="git checkout -b"
alias pullall='find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull \;'

# Docker
alias dockup='docker-compose up -d'
alias dockdown='docker-compose down'

fpath=(/usr/local/share/zsh-completions $fpath)

archey -c
