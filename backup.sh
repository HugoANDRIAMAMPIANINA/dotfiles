#!/bin/bash

echo "Trying to backup local config files..."

backup_config_folder="./.config"
home_config_folder="$HOME/.config"

# Backup installed packages
pacman -Qqe > installs.txt

# Add waybar if not present
echo waybar >> installs.txt

# Copy local .bashrc file to backup
cp $HOME/.bashrc .bashrc

mkdir -p $backup_config_folder/

# Copy local config folders to backup
cp -r $home_config_folder/hypr $backup_config_folder/
cp -r $home_config_folder/ghostty $backup_config_folder/
cp -r $home_config_folder/rofi $backup_config_folder/
cp -r $home_config_folder/waybar $backup_config_folder/
cp -r $home_config_folder/zed $backup_config_folder/

echo "Backup local config files successfully ended !"
