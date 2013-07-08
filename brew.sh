#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install wget with IRI support
brew install wget --enable-iri

# Install other useful binaries
brew install ack
brew install git
brew install pigz
brew install tree
brew install autojump
brew install curl
brew install wget
brew install webkit2png

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	if brew cask info "${@}" | grep "Not installed" > /dev/null; then
		brew cask install "${@}"
	else
		echo "${@} is already installed."
	fi
}

installcask diffmerge
installcask evernote
installcask dropbox
installcask google-chrome
installcask iterm2
installcask sublime-text
installcask the-unarchiver
installcask virtualbox
installcask vlc
installcask adium
installcask gitx

# Remove outdated versions from the cellar
brew cleanup