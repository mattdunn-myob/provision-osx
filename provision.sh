#!/usr/bin/env bash

# install homebrew and brew installable apps
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

# install ohm-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

./configure-osx.sh
./configure-dotfiles.sh
