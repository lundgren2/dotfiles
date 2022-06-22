#!/usr/bin/env zsh
# List where do the settings in my Git configuration come from?
echo "debug .gitconfig:"
git config --list --show-origin

echo "Checking Makefile:"
cat -e -t -v Makefile
perl -pi -e 's/^  */\t/' Makefile # Convert spaces to tabs (Makefiles doesn't support spaces)

echo "Iterm colors"
printf '\e[0;31mplain\n\e[1;31mbold\n'\
'\e[0;91mhighlight\n\e[1;91mbold+highlight\n\e[0m'

echo "Glyph symbols"
echo -e "\xf0\x9f\x90\x8d"
echo -e "\xee\x82\xa0"

echo 'Debugging Brew'
brew --config

echo 'Force rebuild zcompdump'
rm -f ~/.zcompdump; compinit
