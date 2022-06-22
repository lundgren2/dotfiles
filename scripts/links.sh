#!/bin/zsh
DOTFILES=$HOME/.dotfiles
# TODO: Check if link exist
echo "Linking dotfiles..."
# ln -s $DOTFILES/.zshrc ~/.zshrc
# ln -s $DOTFILES/.gitconfig ~/.gitconfig
# ln -s $DOTFILES/.gitignore_global ~/.gitignore_global
# ln -s $DOTFILES/config/starship.toml ~/.config/starship.toml
# ln -s $DOTFILES/config/karabiner/karabiner.json ~/.config/karabiner.json
[ ! -d ~/.config/karabiner ] && ln -s $DOTFILES/config/karabiner ~/.config/karabiner || true

# Link the files
for file in {.zshrc,.gitconfig,.gitignore_global,.hushlogin,.vimrc,.tmux.conf}; do
  DEST=~/$file
  [ ! -r "$DEST" ] && [ ! -f "$DEST" ] && ln -s $DOTFILES/$file $DEST
done
unset file

# Link .config files
for file in {starship.toml,prettier/.prettierrc,karabiner/karabiner.json,nvim/init.nvim}; do
  DEST=~/.config/$file
  [ ! -r "$DEST" ] && [ ! -f "$DEST" ] && ln -s $DOTFILES/config/$file $DEST
done
unset file
