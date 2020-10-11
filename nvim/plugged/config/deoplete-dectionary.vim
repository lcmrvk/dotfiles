nmap <leader>tdd :call ToggleDeopleteDictionary()<CR>

" toggle if results from dictionary should show up in autocomplete
let s:deoplete_dict_enabled = 0
function! ToggleDeopleteDictionary()
    if s:deoplete_dict_enabled
        setlocal dictionary=
        let s:deoplete_dict_enabled = 0
    else
        setlocal dictionary+=/usr/share/dict/words
        let s:deoplete_dict_enabled = 1
    endif
endfunction

" Do not complete too short words
call deoplete#custom#source('dictionary', 'min_pattern_length', 3)
