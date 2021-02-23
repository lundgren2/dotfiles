# By: Tobias Lundgren <github.com/lundgren2/dotfiles>

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

ZSH=~/.dotfiles/zsh

# Load the shell dotfiles
for file in $ZSH/{.exports,.path,.config,.aliases,functions/*,.plugins}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# ~/.custom can be used for personal settings you don’t want to commit.
[ -r ~/.custom ] && source ~/.custom

# Load Starship prompt
eval "$(starship init zsh)"
