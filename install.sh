#!/bin/bash

ln -sf ./dotfiles/nvim/nvim ~/.config/nvim
ln -sf ./dotfiles/starship/starship.toml ~/.config/starship.toml
ln -sf ./dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ./dotfiles/zsh/zshrc ~/.zshrc

echo "Installed dotfiles"
