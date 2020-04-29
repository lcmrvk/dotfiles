set nocompatible         " be iMproved, required
filetype off             " required

set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" ~~~~~~~~~~ My Plugins ~~~~~~~~~~

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'rcticicestudio/nord-vim'
Plugin 'ctrlpvim/ctrlp.vim' 
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:  filetype plugin on


" ~~~~~~~~~~ Custom Settings ~~~~~~~~~~

" >~~~~~~~~~~~ Source Setting Files ~~~~~~~~~~~~
source ~/.vim/startup/functions.vim
source ~/.vim/startup/color.vim
source ~/.vim/startup/settings.vim
source ~/.vim/startup/mappings.vim
source ~/.vim/startup/custom_commands.vim
