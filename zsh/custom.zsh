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

# https://github.com/docker/cli/issues/2625
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

if grep "Arch Linux" /etc/os-release > /dev/null ; then
    export QT_AUTO_SCREEN_SCALE_FACTOR=0
    export QT_SCALE_FACTOR=2
fi

