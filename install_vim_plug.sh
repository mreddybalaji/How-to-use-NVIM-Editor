#!/bin/bash

echo "Installing vim-plug for Neovim..."
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Done! Now open Neovim and run :PlugInstall"

