let g:deoplete#enable_at_startup = 1

" <TAB>: completion 
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
