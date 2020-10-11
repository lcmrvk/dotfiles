" Install plugins
" ---------------
call plug#begin('~/.config/nvim/plugged/p')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'deoplete-plugins/deoplete-dictionary'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'pechorin/any-jump.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'cloudhead/neovim-fuzzy'
Plug 'jsfaint/gen_tags.vim'

" Colorschemes
" ------------
Plug 'morhetz/gruvbox'

call plug#end()


" Source other config files
" -------------------------
source ~/.config/nvim/settings.vim
source ~/.config/nvim/mappings.vim
source ~/.config/nvim/color.vim


" Source plugin specific config files
" -----------------------------------
source ~/.config/nvim/plugged/config/deoplete.vim
source ~/.config/nvim/plugged/config/deoplete-dectionary.vim
source ~/.config/nvim/plugged/config/jedi.vim
source ~/.config/nvim/plugged/config/nerdtree.vim
source ~/.config/nvim/plugged/config/neovim-fuzzy.vim
