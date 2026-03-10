#!/bin/bash

# Install yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

# Install dependencies
yay -S $(cat installs.txt)

# Copy hyprland config
cp ./hypr/ .config/

# Copy waybar config
cp ./waybar/ .config/

# Copy zed config
cp ./zed/ .config/

# Copy ghostty config
cp ./ghostty/ .config/

# Copy rofi config
cp ./rofi/ .config/
