" map window switching to vim keys
nnoremap <C-J> <C-W>j
nnoremap <C-down> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-up> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-right> <C-W>l
nnoremap <C-H> <C-W>h
nnoremap <C-left> <C-W>h

" quick buffer switching
map <leader>n :bn<CR>
map <leader>p :bp<CR>

" quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i
imap <leader>< <><ESC>i
imap <leader>` ``<ESC>i

" Code blocks stay highlighted after indentation
" Easier moving of blocks of code -
vnoremap < <gv
vnoremap > >gv

" Source `.vimrc` to load in changes
nnoremap <leader>sr :source ~/.config/nvim/init.vim<cr>

" Toggle spell check.
map <F3> :setlocal spell!<CR>

" Key bindings for faster splits resizing
nmap <S-A-right> :vertical-resize +1<CR>
nmap <S-A-left> :vertical-resize -1<CR>
nmap <S-A-up> :resize +1<CR>
nmap <S-A-down> :resize -1<CR>
