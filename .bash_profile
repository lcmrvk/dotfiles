# If file exists, load in the file, where colors are defined
if test -r ~/.term_colors.sh;
    then source ~/.term_colors.sh;
    else echo "Couldn't file the file `.term_colors.sh`";
fi

# What appears in the command line prompt
#PS1='\[\e[0;33m\]\h:\W \u\$\[\e[m\] '
PS1="${txtred}[\t]\n${txtylw}\u@\h ${undcyn}\W${txtrst} ${txtgrn}$ ${txtrst}"

export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

# list directory shortcuts
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'

# word count shortcuts
alias wcl='wc -l'
alias wcc='wc -c'
alias wcm='wc -m'
alias wcw='wc -w'

# disk usage shortcuts
alias duh='du -h'
alias duh1='du -h -d 1'

# go back a directory shortcut
alias ..='cd ..'
alias ..,='cd ../..'
alias ..,,='cd ../../..'
alias py3='python3'
alias grep='grep --color'
