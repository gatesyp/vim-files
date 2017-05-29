set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize. 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Alternatively, pass a path where Vundle should install plugins. 
" call vundle#begin('~/some/path/here')

" Let Vundle manage Vundle . 
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'fatih/vim-go'
Plugin 'davidhalter/jedi-vim'

" Plugins must be added before the following line. 
call vundle#end()
filetype plugin indent on
