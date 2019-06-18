#!/usr/bin/env bash


HOME="/home/martin"
FILES=(
    ".bashrc"
    ".config/autorandr"
    ".config/Code/User/settings.json"
    ".config/Code/User/snippets"
    ".gitconfig"
    ".i3/config"
    ".i3status.conf"
    ".inputrc"
    ".nanorc"
    ".profile"
    ".xinitrc"
    ".Xresources"
    ".zshrc"
)

for FILE in "${FILES[@]}"
do
   echo "$HOME/$FILE"
   cp -rf "$HOME/$FILE" "$FILE"
done