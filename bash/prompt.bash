# Borrowed from https://raw.githubusercontent.com/anishathalye/dotfiles/master/bash/prompt.bash

# add prompt customization
FONT_BOLD='\[\e[1m\]'
FONT_RESET='\[\e[0m\]'
COLOR_DEFAULT='\[\e[39m\]'
COLOR_RED='\[\e[31m\]'
COLOR_GREEN='\[\e[32m\]'
COLOR_YELLOW='\[\e[33m\]'
COLOR_BLUE='\[\e[34m\]'
COLOR_MAGENTA='\[\e[35m\]'
COLOR_CYAN='\[\e[36m\]'

machine_name() {
    if [[ -f $HOME/.name ]]; then
        cat $HOME/.name
    else
        hostname
    fi
}

PROMPT_DIRTRIM=3
PS1="\n${COLOR_BLUE}#${COLOR_DEFAULT} \$([ \$(id -u) -eq 0 ] && echo \"${FONT_BOLD}${COLOR_RED}\" || echo \"${COLOR_CYAN}\")\\u${FONT_RESET}${COLOR_DEFAULT} ${COLOR_GREEN}at${COLOR_DEFAULT} ${COLOR_MAGENTA}$(machine_name)${COLOR_DEFAULT} ${COLOR_GREEN}in${COLOR_DEFAULT} ${COLOR_YELLOW}\w${COLOR_DEFAULT}\n\$(if [ \$? -ne 0 ]; then echo \"${COLOR_RED}!${COLOR_DEFAULT} \"; fi)${COLOR_BLUE}>${COLOR_DEFAULT} "
PS2="${COLOR_BLUE}>${COLOR_DEFAULT} "
