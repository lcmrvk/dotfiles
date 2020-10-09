" set mouse support
set mouse=a

" if for 100ms, nothing is written to the buffer, the swapfile is written
" however, this also influences how fast the gitgutter plugin show new chages,
" deletions etc.
set updatetime=100

" tab complete vim commands
set wildmenu

"vertically split new panes to right
set splitright

"horizontally split new panes to bottom
set splitbelow

" enable syntax highlighting
syntax enable

" enable cursorline
set cursorline

" show line numbers
set number
set relativenumber

" have nvim remeber a a longer history
set undolevels=1000

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show the matching part of the pair for [] {} and ()
set showmatch

" start searching before pressing enter.
set incsearch
set nohlsearch
set smartcase

" show initial tabs, spaces and training spaces
set list

" Ignore case when searching.
:set ignorecase

" show line lenght indicator and wrap text at width of 80 characters
set colorcolumn=81
set textwidth=80

" always show at least n lines above/below the cursor.
set scrolloff=10

" enable all Python syntax highlighting features
let python_highlight_all = 1

" don't use swap files
set noswapfile

" don't back up files
set nobackup
set nowritebackup

" have command-line completion <Tab> (for filenames, help topics, option names)
" first list the available options and complete the longest common part, then
" have further <Tab>s cycle through the possibilities:
set wildmode=list:longest,full

" Look for a tags file in the directory of the current file, in the current directory
" and up until $HOME, stopping on the first hit.
set tags=./tags,tags;$HOME
