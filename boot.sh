#!/bin/bash

CWD=$(dirname "$0")
THEME="$HOME/.config/sublime-text-2/Packages/User"

cd $CWD

if ! which spm > /dev/null; then
    echo "install sublime-text-2"
    sudo add-apt-repository ppa:webupd8team/sublime-text-2
    sudo apt-get update
    sudo apt-get install sublime-text-2
else
    echo "you have installed sublime-text-2"
fi

if [ ! -d $THEME ]; then
    echo "clone chopper sublime-snippet"
    git clone https://github.com/chopper-UI/sublime-snippet.git $THEME
else
    echo "update chopper sublime-snippet"
    cd $THEME
    git pull origin master
    cd $CWD
fi
