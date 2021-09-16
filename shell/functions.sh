# borrowed from https://github.com/anishathalye/dotfiles/blob/master/shell/functions.sh
path_remove() {
    PATH=$(echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//')
    # only output non-duplicates remove trailing ':'
}

path_append() {
    path_remove "$1"
    PATH="${PATH:+"$PATH:"}$1"
}

path_prepend() {
    path_remove "$1"
    PATH="$1${PATH:+":$PATH"}"
}

lib_remove() {
    LD_LIBRARY_PATH=$(echo -n $LD_LIBRARY_PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//')
    # only output non-duplicates remove trailing ':'
}

lib_append() {
    lib_remove "$1"
    LD_LIBRARY_PATH="${LD_LIBRARY_PATH:+"$LD_LIBRARY_PATH:"}$1"
}

lib_prepend() {
    lib_remove "$1"
    LD_LIBRARY_PATH="$1${LD_LIBRARY_PATH:+":$LD_LIBRARY_PATH"}"
}

man_remove() {
    MANPATH=$(echo -n $MANPATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//')
    # only output non-duplicates remove trailing ':'
}

man_append() {
    man_remove "$1"
    MANPATH="${MANPATH:+"$MANPATH:"}$1"
}

man_prepend() {
    man_remove "$1"
    MANPATH="$1${MANPATH:+":$MANPATH"}"
}

newline_eof() {
    # Adds newline to the end of a file if it doesn't have one
    # Only use this on text files
    [ -n "$(tail -c1 "$1")" ] && echo >> "$1"
}
