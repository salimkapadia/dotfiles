#!/usr/bin/env bash

# Setup directory structure
mkdir -p ~/Documents/Projects/hidden-files/aws
mkdir -p ~/Documents/Projects/hidden-files/ssh

# Setup dotfiles
/bin/bash bootstrap.sh

# Setup brew and install packages from dot-files.
/bin/bash brew.sh

## added custom packages
brew install --cask docker
brew install --cask google-chrome
brew install --cask slack
brew install --cask atom
brew install --cask sequel-pro
brew install --cask keepassxc
# brew install --cask vlc
brew install --cask whatsapp
brew install --cask beyond-compare
brew install --cask zoom
brew install --cask microsoft-teams

brew install warrensbox/tap/tfswitch

brew install minikube
brew install kubectl
brew install terraform-docs
brew install python3
brew install blueutil

brew install alfred
# brew install android-file-transfer
brew install cheatsheet

brew install flux
brew install valentina-studio

# Install atom plugins
apm install file-icons
apm install language-chef
apm install language-terraform
apm install linter-chefstyle
apm install terraform-fmt

#Remove outdated versions from the cellar.
brew cleanup

# Install aws cli version 2.
brew install awscli
python3 -m pip install --upgrade pip
python3 -m pip install boto3 --user

# setup symlink association.
ln -s ~/Documents/Projects/hidden-files/aws ~/.aws
ln -s ~/Documents/Projects/hidden-files/ssh ~/.ssh

rm ~/.gitconfig
ln -s ~/Documents/Projects/hidden-files/gitconfig ~/.gitconfig
