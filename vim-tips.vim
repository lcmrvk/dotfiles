" TIP:
" Run code in the current file in shell
" ":! sh %"

" TIP:
" Fix indentation (autoindent/autoformat)
" gg=G
" gg -> goes to the top of the file
" =  -> is a command to fix the indentation
" G  -> tells '=' to perform the operation until the end of the file

" TIP:
" Copy something from a register into the clipboard (outside of vim)
" The `@0` is the register I want to copy from
" ":call system('pbcopy', @0)"


" TIP:
" Indent what is inside curly braces. The cursor must be positioned at
" either the beginning or ending curly brace. The `%` sign indicates
" that the thing that should be indented is between the matching curly brace,
" since the percent (%) sign goes to the matching brace.
" "=%"


" TIP:
" Similar to "=%". This way however, it isn't needed to be on a matching brace,
" since the command is supposed to indent what is inside the braces which are
" given in a command.
" Examples:
" ">i{" - indent inside the "{" brace
" ">i(" - indent inside the "(" brace
" ">i[" - indent inside the "[" brace

" The same can be achieved by:

" ">i}" - indent inside the "}" brace
" ">i)" - indent inside the ")" brace
" ">i]" - indent inside the "]" brace


" TIP:
" Sort a number of lines alphabetically.
" 1. way
" - mark the beginning of the list with for example "ma"
" - go to the bottom of the list
" - run "!'a" and write "sort" when prompted for a command
" - press enter
"
" 2. way (visual mode)
" - highlight the lines to be sorted with "V + movement"
" - execute command "!sort"


" TIP:
" Run the "ctags" program on selected or all C files.
" When in one of these files, press "CTRL-]" to jump to a functions
" definition.
" The command ":tags" is going to show all recently visited
" tags.
" The command ":sp <tag>" is going to split windows and jump to the function
" definition. Also, "CTRL-W ]" will do the same.


" TIP:
" Go to file under cursor:
" With "gf" - open up file under cursor (in the same window)
" With "CTRL-W f" - open up file in a new window
" With "CTRL-W gf" - open up file in a new tab
" More info:
" http://vim.wikia.com/wiki/Open_file_under_cursor


" TIP:
" To search case insensitive within a document without having to set 
" ":set ignorecase" or ":set ic" for short.
" Instead use regular search e.g. "/" or "?" and prepend the searched for
" expression with the escape sequence "\c"
" EXAMPLE:
" Searching for `expression`
" "[?/]\cexpression"
" To do the inverse, e.g. case senstive search use capital "C" in the escape
" sequence, like this:
" "[?/]\Cexpression"


" TIP:
" Line wrapping:
" If you want to wrap lines in a specific area, move the cursor to the text you
" want to format and type "gq" followed by the range. For example, "gqq" wraps
" the current line and "gqip" wraps the current paragraph.


" TIP:
" Changing the case:
" "~"    : Changes the case of current character
" "guu"  : Change current line from upper to lower.
" "gUU"  : Change current LINE from lower to upper.
" "guw"  : Change to end of current WORD from upper to lower.
" "guaw" : Change all of current WORD to lower.
" "gUw"  : Change to end of current WORD from lower to upper.
" "gUaw" : Change all of current WORD to upper.
" "g~~"  : Invert case to entire line
"
" More information can be found in int "change.txt" doc file


" TIP:
" Substitute text on specific lines:
" Vim has special regular expression atoms that match in certain lines, columns,
" etc.; you can use them (possibly in addition to the range) to limit the
" matches:
" ":5,12s/(\%5l\|\%12l\)foo/bar/g)"
" More information on:
" "https://stackoverflow.com/questions/17319557/search-and-replace-in-vim-in-specific-lines"
" and
" ":help /\%l"
"
"
" TIP:
" Change ( replace ) selected text in visual mode with a certain character.
" Select text with either "v" or "V" or "CTRL-v".
" Press "r".
" Press the character you want the selected text to be replaced with.
