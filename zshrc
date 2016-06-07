# Path to your oh-my-zsh installation.
export ZSH=/Users/sumonselim/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k customizations
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(load battery time)
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

# use case-sensitive completion.
CASE_SENSITIVE="true"

# display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# command execution time stamp shown in the history command output.
HIST_STAMPS="dd.mm.yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(zsh-autosuggestions)

# User configuration
export LANG=en_US.UTF-8
export DEFAULT_USER="$USER"
export ARCHFLAGS="-arch x86_64"

export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

test -f $ZSH/oh-my-zsh.sh && source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='subl -w'
fi

# pyenv shims & autocompletion
if which pyenv > /dev/null; then
  eval "$(pyenv init -)";
fi

# pyenv virtualenv shims & autocompletion
if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

# aliases
alias zshconfig="subl ~/.zshrc"
alias hsconfig="subl ~/.homestead/Homestead.yaml"

# show/hide hidden files
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app"

# local servers login
alias homestead="cd '/Users/sumonselim/Homestead'; vagrant ssh"
alias ubuntu="cd '/Users/sumonselim/Ubuntu'; vagrant ssh"

# remote servers login
alias skin="ssh root@63.142.251.173"
alias smart="ssh root@107.155.116.117"
alias oikhali="ssh -i ~/Keys/oikhali.pem sabbir@oikhali.com -p 22000"
alias kodeeo="ssh root@128.199.250.147"

# pyenv aliases
alias lspyenv="pyenv virtualenvs" // list existing virtualenvs
alias newpyenv="pyenv virtualenv " // create a virtualenv with pyenv

# Django
alias django-admin=django-admin.py

archey -c

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
