#!/bin/env bash

set -e

read -r -p "This script requires root permissions, please acknowledge that it is being run as root. [y|N]: "
if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Aborting"
    exit 1
fi

echo "Updating script permissions."
chmod +x keyboard.sh

echo "Linking to bin."
sudo ln keyboard.sh /usr/local/bin/keyboard

echo "Done, Enjoy :)"