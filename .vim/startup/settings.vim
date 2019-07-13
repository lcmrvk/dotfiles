syntax enable
"syntax on


" Set mouse so that it doesn't scroll the cursor but the screen
" Note: There are setting in "~/.vim/startup/mappings.vim" which unmap any mouse
" scrolling in Vim.
set mouse=a


set cursorline
set wildmenu
set showcmd
set synmaxcol=0
set term=screen-256color


" Useful
set relativenumber
set nospell

" Vanilla Vim file search improvement
" recursively search through folders
set path+=**

" Not sure, but supposed to be good for something
set nobackup
set noswapfile
set nowritebackup

" Spaces instead of tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set list
set listchars=eol:¬,trail:·,tab:>\
highlight  NonText ctermfg=darkgrey guifg=darkgray
highlight  SpecialKey ctermfg=darkgrey guifg=darkgray

" Search settings
set incsearch
set nohlsearch
set smartcase


set shortmess=aAIsT
set display=uhex
set cmdheight=2
set enc=utf-8
set fileformat=unix

set undolevels=1000
set history=1000

set number
set textwidth=80
set nowrap
set fo-=t
set colorcolumn=81
set backspace=2
highlight ColorColumn ctermbg=darkgrey

" Filetype settings
au FileType python      set shiftwidth=4
au FileType c,cpp       set cindent
" au FileType md          set filetype=markdown
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd BufNewFile,BufReadPost *.md call SetMarkdownOptions()

" Setting so that I can open links in files with the "gx" shortcut
let g:netrw_browsex_viewer   = 'open'

" Disabled
"set ruler
