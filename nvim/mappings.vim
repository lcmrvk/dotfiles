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
nnoremap <leader>] :bn<CR>
nnoremap <leader>[ :bp<CR>

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
nmap <S-A-right> :vertical resize +1<CR>
nmap <S-A-left> :vertical resize -1<CR>
nmap <S-A-up> :resize +1<CR>
nmap <S-A-down> :resize -1<CR>

" functionality to maximize one split and toggle back to the original splits
" layout
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

nnoremap <C-W>m :call MaximizeToggle()<CR>

" Exit back to normal mode from nvim terminal easier
tnoremap <leader>tt <C-\><C-n>

" Copy to clipboard
nnoremap  <leader>yy  "+yy
vnoremap  <leader>y  "+y

" Paste from clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" quickly close all buffers (with/without force)
nnoremap <leader>q :bufdo :q<CR>
nnoremap <leader>Q :bufdo! :q!<CR>

" shortcut to show open buffers
nnoremap <leader>bb :buffers<CR>

" create a named temporary file
function! NewTempNamedFile()
    let s:new_temp_file_name = tempname()
    exec "new"
    exec "w" . s:new_temp_file_name
endfunction

nnoremap <leader>nt :call NewTempNamedFile()<CR>

" run python script from within neovim
let g:python_scipt_cmd_args = ""
function! ExecPythonFile()
    let s:command = "!python3  % " . g:python_scipt_cmd_args
    exec s:command
endfunction

nnoremap <leader>p3 :call ExecPythonFile()<CR>

" open man page of command under cursor
function! OpenManPageCommandUnderCursor()
    " get word under cursor
    let s:command_under_cursor = expand('<cword>')
    call NewTempNamedFile()
    " when vim is used for man pages, buffer is set to nomodifiable by default
    setlocal modifiable
    exec "r!man " . s:command_under_cursor
    " delete the extra empty line at the beginning
    exec ":delete"
    setlocal syntax=man
endfunction

nnoremap <leader>man :call OpenManPageCommandUnderCursor()<CR>

" set shift-backspace to delete the previous word
function! DeletePreviousWord()
    let s:char_before_cursor = expand('<cword>')
    if s:char_before_cursor == ''
        exec "normal! x"
    endif
    exec "normal! ciw"
endfunction

nnoremap <leader><BS> :call DeletePreviousWord()<CR>

" better navigation through files
" I can browse a file through faster, while not losing overview
nnoremap <C-j> 5j
nnoremap <C-k> 5k
