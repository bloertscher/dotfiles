"" General
set nocompatible
set nonumber	" Don't show line numbers
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
" Together, ignorecase + smartcase cause searches to be case-sensitive
" if the pattern has a capital letter
set ignorecase	" Always case-insensitive
set smartcase	" Enable smart-case search
set incsearch	" Searches for strings incrementally
 
set undolevels=1000	" Number of undo levels

" See vim-colors-solarized
syntax enable
set background=light

" Have to do this to get the togglebg function loaded
packadd! vim-colors-solarized
colorscheme solarized
" Set a key to toggle light/dark
call togglebg#map("<F5>")


"" tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
"if exists('$TMUX')
"   " set insert mode to a vertical line   
"   let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>[6 q\<esc>\\"
"   let &t_SI .= "\<esc>Ptmux;\<esc>\<esc>]12;\x7\<esc>\\"
"   " set normal mode to a block
"   let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>[2 q\<esc>\\"
"   let &t_EI .= "\<esc>Ptmux;\<esc>\<esc>]12;\x7\<esc>\\"
"   " set replace mode to an underscore
"   let &t_SR .= "\<esc>Ptmux;\<esc>\<esc>[4 q\<esc>\\"
"   let &t_SR .= "\<esc>Ptmux;\<esc>\<esc>]12;\x7\<esc>\\"
"
"   " initialize cursor shape/color on startup (silent !echo approach doesn't seem to work for tmux)
"   augroup ResetCursorShape
"      au!
"      "autocmd VimEnter * startinsert | stopinsert
"      autocmd VimEnter * normal! :startinsert :stopinsert
"      "autocmd VimEnter * :normal :startinsert :stopinsert
"   augroup END
"
"   " reset cursor when leaving tmux
"   autocmd VimLeave * !echo -ne "\033Ptmux;\033\033[2 q\033\\"
"   autocmd VimLeave * !echo -ne "\033Ptmux;\033\033]12;\007\033\\"
":endif
