export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

# Themes
ZSH_THEME="robbyrussell"

# Plugin for ZSH
ZSH_CUSTOM=
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Oh my ZSH
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
 
# Rust Programming Language
source "$HOME/.cargo/env"

# Starshop
eval "$(starship init zsh)"
eval "$(~/.cargo/bin/starship init zsh)"

# Alias exa
alias ls='exa --icons -F -H --group-directories-first --git -1'
alias ll='ls -alF'
alias cl='clear'
# Alias Rust
alias cm='cargo make'
alias gen='cargo generate'

# Config git
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Node Version Manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
