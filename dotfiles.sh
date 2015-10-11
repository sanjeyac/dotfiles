#!/bin/sh

#locations
DIR=$HOME/.dotfiles
ALIASES=$DIR/system/aliases

#parse params
case "$1" in

  "install")
    #======= INSTALL PROCEDURE #======= 
    #create the projects file
    mkdir $DIR
    cp -r * $DIR

    #add aliases to zsh
    echo "source $ALIASES" >> $HOME/.zshrc
    
    #add aliases to bash
    echo "
if [ -f $ALIASES ]; then
  . $ALIASES
fi
	" >> $HOME/.bashrc    
    ;;

  "update")
    #======= UPDATE PROCEDURE #======= 
    git pull
    git update
    cp -r * $DIR
    ;;


  *)
    #======= HELP MANUAL #======= 
    echo "
The dotfile project v.0.1
options:
	dotfiles.sh install	- Install all the dot files
	dotfiles.sh update	- Update with the last version of the project
    "
    exit 1
    ;;
esac
