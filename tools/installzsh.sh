#!/bin/sh

sudo apt-get update
sudo apt-get install zsh
sudo apt-get install git-core
curl -L http://install.ohmyz.sh > install.sh
sh install.sh
sudo chsh -s $(which zsh) $(whoami)
