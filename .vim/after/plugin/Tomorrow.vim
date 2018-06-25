" Customize Tomorrow colorscheme
" https://vi.stackexchange.com/questions/11157/how-can-i-condition-a-variable-on-my-colorscheme#11159

if g:colors_name == "Tomorrow" && &background == "light"
    " Required by some terminals because we use some colors from Gruvbox colorscheme
    set runtimepath+=~/.vim/plugged/gruvbox/
    silent !~/.vim/plugged/gruvbox/gruvbox_256palette.sh &

    "Custom highlighting for Tomorrow colorscheme
    "modifies the scheme to use some colors from gruvbox scheme
    hi Keyword    ctermfg=91
    hi SignColumn term=bold cterm=bold ctermfg=253 ctermbg=223 gui=bold guifg=#f8f8f0 guibg=#465457
    hi Normal ctermfg=237 ctermbg=229
    hi FoldColumn ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=Grey
    hi Folded term=bold,underline cterm=bold,underline ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=LightGrey
    hi LineNr ctermfg=12 ctermbg=223 guifg=Brown
    hi CursorColumn ctermbg=223 guibg=Grey90
    hi CursorLine ctermbg=223 guibg=Grey90
endif
