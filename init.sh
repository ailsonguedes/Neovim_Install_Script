#!/usr/bin/env bash

# INSTALL NeoVim
echo "Installing Neovim..."
sudo pacman -S neovim

# UPDATING the packages
sudo pacman -Sy

# INSTALL updates
sudo pacman -Su

# INSTALLING neovim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# CLONE nvim config files
echo "Clone Neovim config files repo..."
git clone https://github.com/ailsonguedes/NeoVim_Configs

# CREATE nvim folder
echo "Create nvim folder in .config/"
cd /home/$1/.config
mkdir nvim

# MOVE to NeoVim_Configs path
echo "Moving to NeoVim_Configs path..."
cd /home/$1/NeoVim_Configs

# COPY init.vim file to nvim config folder
echo "Copy init.vim to .config/nvim"
cp init.vim /home/$1/.config/nvim

# COPY coc-settings.json to nvim config folder
echo "Copy coc-settings.json to .config/nvim"
cp coc-settings.json /home/$1/.config/nvim

#COPY plugged dir to nvim config folder
echo "Copy plugged dir to .config/nvim"
cp -r plugged /home/$1/.config/nvim

# MOVE to nvim config path
echo "Moving to Neovim config path..."
cd /home/$1/.config/nvim

# OPEN init.vim file
echo "Opening init.vim config file..."
nvim init.vim

# Remember to use the "PlugInstall" command in a neovim file to install your new configs

