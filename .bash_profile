# If file exists, load in the file, where colors are defined
if [[ -e ~/.term_colors.sh && -r ~/.term_colors.sh ]]; then
    source ~/.term_colors.sh;
else
    echo "Couldn't file the file '.term_colors.sh'";
fi

# What appears in the command line prompt
#PS1='\[\e[0;33m\]\h:\W \u\$\[\e[m\] '
PS1="${txtred}[\t]\n${txtylw}\u@\h ${undcyn}\W${txtrst} ${txtgrn}$ ${txtrst}"

export CLICOLOR=1
export LSCOLORS=cxfxcxdxbxegedabagacad

#######################################################
####               My own extra aliases            ####
#######################################################

cd_multiple() {
    args=$@
    if [ $args = "" ]; then
        dir="."
    else
        dir=$(echo "$args" | sed 's/,/..\//g')
    fi
    cd "$dir"
}

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
alias .,='cd_multiple'
alias ..='cd ..'
alias .s='cd .. ; ls'

# python
alias py3='python3'

# grep
alias grep='grep --color'

# git related
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias gb='git branch'

# vim related
alias v='vim'

# xclip related
alias xc='xclip'

# docker related
alias d-c='docker-compose'
alias d-e='docker exec'
alias d='docker'
