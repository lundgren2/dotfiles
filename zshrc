# By: Tobias Lundgren <github.com/lundgren2/dotfiles>

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/sbin:$PATH" # brew
export PATH=$PATH:/usr/local/bin
export PATH="$HOME/.yarn/bin:$PATH"
export GOPATH=$HOME/go
export ZSH=/Users/tobiaslundgren/.oh-my-zsh
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DOTFILES=~/Dropbox/dotfiles
export EDITOR=vim
export LANG=en_US.UTF-8

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
local prompt_symbol=$'\n'"▲" #▲λ
local return_status="%(?:%{$fg[green]%}$prompt_symbol:%{$fg[red]%}$prompt_symbol)"
PROMPT='${return_status} %{$reset_color%}${path_string} %{$reset_color%}'

# Install fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add aliases
alias Dev="cd ~/Dev"
ALIASES_PATH=$DOTFILES/zsh/aliases.sh
[ -f $ALIASES_PATH ] && source $ALIASES_PATH

export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"
ZSH_THEME_TERM_TITLE_IDLE="%~"

# Nicer history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

# Use vim as the editor
# export EDITOR=vi

# Edit a note
function n() {
    local note=$(find ~/notes/* | selecta)
    if [[ -n "$note" ]]; then
        (cd ~/notes && vi "$note")
    fi
}

alias graphql="sh scripts/generate-apollo-files.sh" alias graphqlSchema="sh scripts/update-graphql-schema.sh" alias translations="sh scripts/update-translations.sh" alias assets="swiftgen"