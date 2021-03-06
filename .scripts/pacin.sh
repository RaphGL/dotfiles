#!/bin/env bash
curr_dir=$(pwd)
pacman --needed -S $(cat $curr_dir/dotfiles/.lists/packages.list)
pip install $(cat $curr_dir/dotfiles/.lists/pip.list)
npm install -g $(cat $curr_dir/dotfiles/.lists/npm.list)
gsettings set org.freedesktop.ibus.panel xkb-icon-rgba '#8be9fd'
