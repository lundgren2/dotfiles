DOTFILES:= $(shell pwd)
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

install-core: brew git npm

link:
	. $(DOTFILES)/scripts/links.sh

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

packages: brew-packages node-packages

git: brew
	is-executable git || brew install git

brew-packages:
	# Make sure we’re using the latest Homebrew.
	brew update
	# Upgrade any already-installed formulae.
	brew upgrade
	brew bundle --file=$(DOTFILES)/install/Brewfile
	# Remove outdated versions from the cellar.
	brew cleanup
	# For the quick look casks
	xattr -r ~/Library/QuickLook
	xattr -d -r com.apple.quarantine ~/Library/QuickLook

npm:
	if ! [ -d $(NVM_DIR)/.git ]; then git clone https://github.com/creationix/nvm.git $(NVM_DIR); fi
	. $(NVM_DIR)/nvm.sh; nvm install --lts

node-packages: npm
	. $(NVM_DIR)/nvm.sh; npm install -g $(shell cat install/npmfile)

test:
	bats test/*.bats
