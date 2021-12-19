# Use colors in coreutils utilities output
alias grep='grep --color=auto'
alias grepc='grep --color=always'
alias diff='diff --color=auto'
alias diffc='diff --color=always'

# ls aliases
LS_OPTIONS="-F -C -h --color=auto"
alias ls="ls $LS_OPTIONS"
alias ll='ls -lAh'
alias la='ls -A'
alias lla='ls -lah'
alias l='ls'

# less
# -F: quit if one screen
# -i: ignore case if no uppercase
# -R: output raw control characters (enables color)
LESS_OPTIONS="-F -i -R"
alias less="less $LESS_OPTIONS"

alias findhere="find . -mindepth 1 -maxdepth 1"

# Aliases to protect against overwriting
alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'

# git related aliases
alias gs='git status -s'
alias gb='git branch'
alias gg='git g'
alias ggg='git gg'
alias gggg='git ggg'

# Programs
alias py3='python3'
alias dc='docker-compose'

# Update dotfiles
dfu() {
    (
        cd ~/.dotfiles && git pull --ff-only && ./install -q
    )
}

# Use pip without requiring virtualenv
# syspip() {
#     PIP_REQUIRE_VIRTUALENV="" pip "$@"
# }

# syspip2() {
#     PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
# }

# syspip3() {
#     PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
# }

# cd to git root directory
alias cdgr='cd "$(git root)"'

# Create a directory and cd into it
mcd() {
    mkdir "${1}" && cd "${1}"
}

# Jump to directory containing file
jump() {
    cd "$(dirname ${1})"
}

# Go up [n] directories
up()
{
    local cdir="$(pwd)"
    if [[ "${1}" == "" ]]; then
        cdir="$(dirname "${cdir}")"
    elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
        echo "Error: argument must be a number"
    elif ! [[ "${1}" -gt "0" ]]; then
        echo "Error: argument must be positive"
    else
        for ((i=0; i<${1}; i++)); do
            local ncdir="$(dirname "${cdir}")"
            if [[ "${cdir}" == "${ncdir}" ]]; then
                break
            else
                cdir="${ncdir}"
            fi
        done
    fi
    cd "${cdir}"
}

# Execute a command in a specific directory
xin() {
    (
        cd "${1}" && shift && ${@}
    )
}

# Check if a file contains non-ascii characters
nonascii() {
    LC_ALL=C grep -n '[^[:print:][:space:]]' "${1}"
}

# Serve current directory

serve() {
    ruby -run -e httpd . -p "${1:-8080}"
}

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'

