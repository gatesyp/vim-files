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

brew install vim --with-python3

echo "Installing plugins. "

pip install yapf
vim +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer

echo "All finished. "
