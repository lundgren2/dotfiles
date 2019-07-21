# By: Tobias Lundgren <github.com/lundgren2/dotfiles>

export ZSH=/Users/tobiaslundgren/.oh-my-zsh
export PATH="/usr/local/sbin:$PATH" # brew
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DOTFILES=~/Dropbox/dotfiles
export EDITOR=vim
export LANG=en_US.UTF-8
# export PATH=$PATH:/usr/local/bin
# export PATH="$HOME/.yarn/bin:$PATH"
# export GOPATH=$HOME/go

ZSH_THEME="mh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
)
source $ZSH/oh-my-zsh.sh

# Set prompt, similar to Pure by Sindre Sorhus but much faster
local path_string="%{$fg[gray]%}%~"
local prompt_symbol=$'\n'"❯" #▲λ▲
local return_status="%(?:%{$fg[green]%}$prompt_symbol:%{$fg[red]%}$prompt_symbol)"
PROMPT='${return_status} %{$reset_color%}${path_string} %{$reset_color%}'

# Install fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add aliases
alias Dev="cd ~/Dev"
ALIASES_PATH=$DOTFILES/zsh/aliases.sh
[ -f $ALIASES_PATH ] && source $ALIASES_PATH

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Nicer history
HIST_STAMPS="dd.mm.yyyy"
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion