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


" Center
nmap G Gzz
nmap gg ggzz
nmap L Lzz
nmap H Hzz


" Moving Between Windows
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-H> <C-W>h
nmap <C-L> <C-W>l


" NERDTree toggle on/off
nmap <F2> :NERDTreeToggle<CR>


" Resizing Windows Vertically
nnoremap <leader><right> <C-W>>
nnoremap <leader><left> <C-W><


" Resizing Windows Horizontal
nnoremap <leader><up> <C-W>-
nnoremap <leader><down> <C-W>+


" Code blocks stay highlighted after indentation
" Easier moving of blocks of code -
vnoremap < <gv
vnoremap > >gv


" Source `.vimrc` to load in changes
nnoremap <leader>sop :source ~/.vimrc<cr>

" Yank and copy in one go (:Cbc is my custom command)
nmap cyy yy:Cbc<CR>
