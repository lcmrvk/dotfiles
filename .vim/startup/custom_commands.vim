"My custom commands

" Note: the `!` is just so that when I reload the `.vimrc` file Vim doesn't
" complain that such command already exists
" This is just for OS X
command! Cbc :call system('pbcopy', @0)
