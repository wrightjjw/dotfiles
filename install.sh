#!/bin/sh

REPO=$(pwd)

# alacritty
mkdir -p ~/.config/alacritty
ln -s $REPO/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# dunst
mkdir -p ~/.config/dunst
ln -s $REPO/dunst/dunstrc ~/.config/dunst/dunstrc

# polybar
mkdir -p ~/.config/polybar
ln -s $REPO/polybar/config ~/.config/polybar/config

# vim
ln -s $REPO/vim/vimrc ~/.vimrc

# zsh
ln -s $REPO/zsh/.zshrc ~/.zshrc
ln -s $REPO/zsh/.zshenv ~/.zshenv

# starship
ln -s $REPO/starship.toml ~/.config/starship.toml

# scripts
mkdir -p ~/.local/bin
for s in $(ls $REPO/scripts)
do
	ln -s $REPO/scripts/$s ~/.local/bin/$s
done

