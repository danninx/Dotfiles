#!/bin/bash

# Pre
sudo pacman -Syu --noconfirm
sudo pacman -S fastfetch --noconfirm --needed 

# Create bash aliases
alias_source='if [ -f ~/Dotfiles/.bash_aliases ]; then\n . ~/Dotfiles/.bash_aliases\nfi'

if ! grep -Fxq "$alias_source" ~/.bashrc; then
    echo -e "\n$alias_source" >> ~/.bashrc
    echo "Added .bash_aliases"
else
    echo ".bash_aliases already added"
fi

source ~/.bashrc

# fastfetch
mkdir ~/.config/fastfetch
cp ~/Dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch

# Post
fastfetch