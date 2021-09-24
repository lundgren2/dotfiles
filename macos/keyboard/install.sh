#!/bin/sh

echo "Installing custom US Swedish Layout";
sudo ln -s $DOTFILES/macos/keyboard/US\ Swedish.bundle /Library/Keyboard\ Layouts/

# To apply changes to a keyboard layout, run below and restart.
sudo touch /Library/Keyboard\ Layouts/
