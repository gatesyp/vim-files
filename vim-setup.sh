#!/bin/bash
# sets up vim and configures it 
clear

echo "Setting up vim"

sudo apt-get install vim
sudo apt-get install ctagger
cp -r .vim ~/
cp .vimrc ~/
# copy the file which will update github to reflect changes
cp update-vim-repo.sh ~/

# install package manager
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "installing plugins"

vim +PluginInstall +qall

echo "all finished"
