" Vim color file
" Maintainer:	Richard Wood <R.B.Wood@damtp.cam.ac.uk>
" Last Change:	21 August 2009
" Adapted from the evening color scheme and 
" ir_black: http://blog.infinitered.com/entries/show/6

" Place this file in
" ~/.vim/colors/
" and add
" colorscheme rbw 
" to your 
" ~/.vimrc
"
" Note the dark grey background
" is *not* set by the vim colorscheme itself
" as Mac OS X terminal.app does not
" behave nicely.
"
" Instead, this colorscheme is
" designed to be used with the following
" ~/.Xdefaults terminal color scheme
" or the Mac OS equivalent
" (see http://ciaranwal.sh/2007/11/01/customising-colours-in-leopard-terminal
" to customise colours in leopard terminal)
"
" *foreground:       #f2f2f2
" *background:       #2e2e2e
" *cursorColor:      #ffffff

" ! Black
" *color0:  #4f4f4f
" *color8:  #7c7c7c
" ! Red
" *color1:  #ff6c60
" *color9:  #ffb6b0
" ! Green
" *color2:  #a8ff60
" *color10: #ceffac
" ! Yellow
" *color3:  #ffffb6
" *color11: #ffffcc
" ! Blue
" *color4:  #96cbfe
" *color12: #b5dcff
" ! Purple
" *color5:  #ff73fd
" *color13: #ff9cfe
" ! Cyan
" *color6:  #c6c5fe 
" *color14: #dfdffe
" ! White
" *color7:  #eeeeee
" *color15: #ffffff


" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "rbw"

hi Normal  ctermfg=White 

" Groups used in the 'highlight' and 'guicursor' options default value.
hi Search        term=underline      cterm=underline       ctermfg=none         ctermbg=none        
hi IncSearch     term=reverse        cterm=reverse                                                  

hi CursorColumn  term=none        cterm=none            ctermbg=none       
hi CursorLine    term=none        cterm=none            ctermbg=none       

hi ModeMsg       term=bold           cterm=bold                 
hi StatusLine    term=reverse,bold   cterm=reverse,bold          
hi StatusLineNC  term=reverse        cterm=reverse               
hi ErrorMsg      term=standout       ctermfg=White         ctermbg=DarkRed                         
hi WarningMsg    term=standout       ctermfg=LightRed           
hi Question      term=standout       ctermfg=LightGreen          
hi MoreMsg       term=bold           ctermfg=LightGreen        
hi Title         term=bold           ctermfg=LightMagenta        
hi LineNr        term=underline      ctermfg=Yellow                            

hi Visual        term=reverse        cterm=reverse               
hi VisualNOS     term=underline,bold cterm=underline,bold        

hi NonText       term=bold           ctermfg=LightBlue                         
hi Directory     term=bold           ctermfg=LightCyan                         
hi SpecialKey    term=bold           ctermfg=LightBlue                         

hi String        ctermfg=green    
hi Number        ctermfg=magenta  
                                  
hi Keyword       ctermfg=blue     
hi PreProc       ctermfg=blue     
hi Conditional   ctermfg=blue     
                                  
hi Todo          ctermfg=red      
hi Constant      ctermfg=cyan     
                                  
hi Identifier    ctermfg=cyan     
hi Function      ctermfg=brown    
hi Type          ctermfg=yellow   
hi Statement     ctermfg=lightblue
                                                   
hi Special       ctermfg=white
hi Delimiter     ctermfg=cyan 
hi Operater      ctermfg=white

hi link Character       Constant
hi link Boolean         Constant
hi link Float           Number
hi link Repeat          Statement
hi link Label           Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link SpecialComment  Special
hi link Debug           Special

hi DiffAdd       term=bold                      ctermbg=DarkBlue   
hi DiffChange    term=bold                      ctermbg=DarkMagenta

hi DiffDelete    term=bold     ctermfg=Blue     ctermbg=DarkCyan   
hi DiffText      term=reverse  cterm=bold       ctermbg=Red        

hi WildMenu      term=standout ctermfg=Black    ctermbg=Yellow       
hi Folded        term=standout ctermfg=DarkBlue ctermbg=LightGrey    
hi FoldColumn    term=standout ctermfg=DarkBlue ctermbg=LightGrey    
