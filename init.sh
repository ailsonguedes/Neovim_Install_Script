#!/bin/bash

# INSTALL NeoVim
sudo pacman -S neovim

# CLONE nvim config files
git clone https://github.com/ailsonguedes/NeoVim_Configs

# MOVE to NeoVim_Configs path
cd NeoVim_Configs

# COPY init.vim file to nvim config path
cp init.vim /home/ailmafsk13/Documentos/.config/nvim

# MOVE to nvim config path
cd /home/ailmafsk13/.config/nvim

# OPEN init.vim file
nvim init.vim

# Remember to use the "PlugInstall" command in a neovim file to install your new configs

