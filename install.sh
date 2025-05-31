#!/bin/bash

cp ./nvim ~/.config/nvim
cp ./starship/starship.toml ~/.config/starship.toml
ln ./tmux/.tmux.conf ~/.tmux.conf
ln ./zsh/.zshrc ~/.zshrc

echo "Installed dotfiles"
