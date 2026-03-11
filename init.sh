#!/bin/bash

echo "Trying to install yay..."

# Install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

echo "Successfully installed yay !"

echo "Trying to install packages..."

# Install dependencies
yay -S $(cat installs.txt)
echo "Successfully installed packages !"

echo "Trying to copy config files..."

# Copy .bashrc file
cp .bashrc $HOME/.bashrc

# Copy .config folder
cp -r ./.config/ $HOME/

echo "Config files successfully copied !"
