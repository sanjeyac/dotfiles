#!/bin/sh

#locations
DIR=$HOME/.dotfiles
ALIASES=$DIR/system/aliases
COMMONSH=$DIR/commonzsh.sh
SOLARIZE=$DIR/tools/solarized-gnome-terminal.sh

#parse params
case "$1" in

  "install")
    #======= INSTALL PROCEDURE #======= 
    #create the projects file
    [ -d $DIR ] || mkdir $DIR
    cp -r * $DIR

	#install the main script in .zsh only if it isn't already there
	if ! grep -Fq "$COMMONSH" $HOME/.zshrc; then
	    #add aliases to zsh
	    echo "source $COMMONSH" >> $HOME/.zshrc
	fi
    ;;

  "update")
    #======= UPDATE PROCEDURE #======= 
    git pull
    git update
    cp -r * $DIR
    ;;


  "solarize")
    #======= GNOME TERMINAL SOLARIZE #======= 
    sh $SOLARIZE
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
