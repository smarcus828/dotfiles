#!/bin/bash

sudo chown -R smarcus /usr/local/var/homebrew
sudo chown -R smarcus /usr/local/share/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

git config --global user.name "Steven Marcus"
git config --global user.email "smarcus@cicsnc.org"

brew install stow zsh tree vim wget ncdu gpg pine iterm2

