#!/bin/bash

# Sets up vim and configures it. 
clear

echo "Setting up vim. "

# sudo apt-get install vim
cp -r .vim ~/
cp .vimrc ~/

# Copy the file which will update github to reflect changes. 
cp push-vim-upsteam.sh ~/

# Install package manager. 
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Installing plugins. "

vim +PluginInstall +qall

echo "All finished. "
