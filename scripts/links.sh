#!/bin/zsh
DOTFILES=$HOME/.dotfiles

echo "Linking dotfiles..."
ln -s $DOTFILES/.zshrc ~/.zshrc
ln -s $DOTFILES/config/git/.gitconfig ~/.config/git/.gitconfig
ln -s $DOTFILES/config/git/.gitignore ~/.config/git/.gitignore
ln -s $DOTFILES/config/starship.toml ~/.config/starship.toml
