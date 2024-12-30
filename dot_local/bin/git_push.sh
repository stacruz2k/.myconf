#!/bin/bash

target="$HOME/.myconf"

update_git() {
    echo "Updating...:  $1"
    cd $1
    git add .
    git commit -m .
    git push
    cd -
}

update_git $target
# update_git "$HOME/gits/C"
# update_git "$HOME/gits/config"
