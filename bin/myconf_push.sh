#!/bin/bash

target="$HOME/.myconf"

update_git() {
    echo $target
    cd $target
    git add .
    git commit -m .
    git push
    cd -
}

update_git
