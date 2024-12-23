#!/bin/bash

target="$HOME/.myconf"

update_git() {
    echo "Updating... $target"
    cd $target
    git add .
    git commit -m .
    git push
    cd -
}

update_git
