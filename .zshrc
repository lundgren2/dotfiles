# By: Tobias Lundgren <github.com/lundgren2/dotfiles>

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

ZSH=~/.dotfiles/zsh

# Load the shell dotfiles
# * ~/.custom can be used for personal settings you don’t want to commit.
for file in $ZSH/{._custom,.exports,.path,.settings,.aliases,functions/*}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load Starship prompt
eval "$(starship init zsh)"

# Load plugins
source $ZSH/.plugins
