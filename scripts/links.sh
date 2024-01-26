#!/bin/zsh
DOTFILES=$HOME/.dotfiles
echo "Linking dotfiles..."

# Link the files
for file in {.zshrc,.gitconfig,.gitignore_global,.hushlogin,.vimrc,.tmux.conf,.SpaceVim.d}; do
  DEST=~/$file
  [ ! -r "$DEST" ] && [ ! -f "$DEST" ] && ln -fhs $DOTFILES/$file $DEST
done
unset file

# Link .config files
# Move karabiner folder
[ ! -d ~/.config/karabiner ] && ln -s $DOTFILES/config/karabiner ~/.config || true
[ ! -d ~/.config/prettier ] && ln -s $DOTFILES/config/prettier ~/.config || true

for file in {starship.toml}; do
  DEST=~/.config/$file
  [ ! -r "$DEST" ] && [ ! -f "$DEST" ] && ln -fhs $DOTFILES/config/$file $DEST
done
unset file
