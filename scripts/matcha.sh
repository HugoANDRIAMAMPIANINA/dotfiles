#!/bin/bash

# Script to install matcha, an Idle Inhibitor for Wayland
# source code from https://codeberg.org/QuincePie/matcha

repo_folder = $HOME/Downloads/github-repo

mkdir -p $repo_folder
cd $repo_folder

git clone https://codeberg.org/QuincePie/matcha.git

cd matcha/

meson setup build --buildtype=release
meson compile -C build
meson install -C build
