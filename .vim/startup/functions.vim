function! SetMarkdownOptions()
    set filetype=markdown
    set autoindent
endfunction


function! SetColemakLayout()
	" movement keys
    nnoremap n h|xnoremap n h|onoremap n h|
	nnoremap e j|xnoremap e j|onoremap e j|
	nnoremap i k|xnoremap i k|onoremap i k|
	nnoremap o l|xnoremap o l|onoremap o l|

	" insert, on new line, undo, yank
	nnoremap u i|xnoremap u i|onoremap u i|
	nnoremap y o|xnoremap y o|onoremap y o|
	nnoremap l u|xnoremap l u|onoremap l u|
	nnoremap j y|xnoremap j y|onoremap j y|
	nnoremap ; p|xnoremap ; p|onoremap ; p|

endfunction