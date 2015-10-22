#!/bin/sh

sudo apt-get update
sudo apt-get install zsh
sudo apt-get install git-core
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh) $(whoami)
