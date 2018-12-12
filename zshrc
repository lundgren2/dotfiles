# By: Tobias Lundgren <github.com/lundgren2/dotfiles>

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/bin
export GOPATH=$HOME/go
export ZSH=/Users/tobiaslundgren/.oh-my-zsh
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DOTFILES=~/Dropbox/dotfiles
export EDITOR=/usr/bin/vi

ZSH_THEME="mh"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  z
)
source $ZSH/oh-my-zsh.sh

# Set prompt, similar to Pure by Sindre Sorhus but much faster
local path_string="%{$fg[gray]%}%~"
local prompt_symbol=$'\n'"▲"
local return_status="%(?:%{$fg[white]%}$prompt_symbol:%{$fg[red]%}$prompt_symbol)"
PROMPT=$'\n''${path_string} ${return_status} %{$reset_color%}'

# Install fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add aliases
ALIASES_PATH=$DOTFILES/zsh/aliases.sh
[ -f $ALIASES_PATH ] && source $ALIASES_PATH
