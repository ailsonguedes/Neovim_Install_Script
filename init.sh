#!/bin/bash

# INSTALL NeoVim
echo "Installing Neovim..."
sudo pacman -S neovim

# CLONE nvim config files
echo "Clone Neovim config files repo..."
git clone https://github.com/ailsonguedes/NeoVim_Configs

# MOVE to NeoVim_Configs path
echo "Moving to NeoVim_Configs path..."
cd NeoVim_Configs

# COPY init.vim file to nvim config path
echo "Copy init.vim to config nvim path..."
cp init.vim /home/ailmafsk13/Documentos/.config/nvim

# MOVE to nvim config path
echo "Moving to Neovim config path..."
cd /home/ailmafsk13/.config/nvim

# OPEN init.vim file
echo "Opening init.vim config file..."
nvim init.vim

# Remember to use the "PlugInstall" command in a neovim file to install your new configs

