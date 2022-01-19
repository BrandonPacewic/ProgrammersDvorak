#!/bin/env bash

set -e

read -r -p "You are about to change your keyboard layout to -> Programmer's Dvorak? [y|N]: "
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Aborting"
    exit 1
fi

setxkbmap -layout us -variant dvp
echo "Done, Enjoy :)"