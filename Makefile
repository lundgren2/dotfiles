DOTFILES=~/.dotfiles
PATH := $(DOTFILES)/bin:$(PATH)
NVM_DIR := $(HOME)/.nvm

# To force rebuild
.PHONY: all test clean

all: install-core packages

sudo:
ifndef GITHUB_ACTION
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
endif

link:
	source $(DOTFILES)/scripts/links.sh

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

install-core: brew git npm ruby

packages: brew-packages cask-apps global-npm


cask-apps:

git: brew
	brew install git
	GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
	git config --global user.name "$GIT_AUTHOR_NAME"
	GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
	git config --global user.email "$GIT_AUTHOR_EMAIL"


brew-packages:
	brew cleanup
	brew bundle --file=$DOTFILES/install/Brewfile
	xattr -r ~/Library/QuickLook #TODO: check if needed!
	xattr -d -r com.apple.quarantine ~/Library/QuickLook

vscode-extensions:
	for EXT in $$(cat install/Codefile); do code --install-extension $$EXT; done


npm:
	if ! [ -d $(NVM_DIR)/.git ]; then git clone https://github.com/creationix/nvm.git $(NVM_DIR); fi
	. $(NVM_DIR)/nvm.sh; nvm install --lts

node-packages: npm
	. $(NVM_DIR)/nvm.sh; npm install -g $(cat install/npmfile)

test:
	bats test/*.bats
