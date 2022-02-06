# list directory shortcuts
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'

# go back a directory shortcut
cd_multiple() {
    args=$@
    if [ $args = "" ]; then
        dir="."
    else
        dir=$(echo "$args" | sed 's/,/..\//g')
    fi
    cd "$dir"
}

alias .,='cd_multiple'
alias ..='cd ..'
alias .s='cd .. ; ls'

# python
alias py3='python3'

# git related
alias gs='git status'
alias gl='git log'
alias gd='git diff'
alias gb='git branch'
alias gbc='git branch --show-current'

# ranger shortcut
ranger_cd() {
    temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
    ranger --choosedir="$temp_file" -- "${@:-$PWD}"
    if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
        cd -- "$chosen_dir"
    fi
    rm -f -- "$temp_file"
}

alias rr='ranger_cd'
