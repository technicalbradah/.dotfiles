" Customize Gruvbox
" https://vi.stackexchange.com/questions/11157/how-can-i-condition-a-variable-on-my-colorscheme#11159

if g:colors_name == "gruvbox" && &background == "light"
    " Required by some terminals
    set runtimepath+=~/.vim/plugged/gruvbox/
    silent !~/.vim/plugged/gruvbox/gruvbox_256palette.sh &

    hi SignColumn term=bold cterm=bold ctermfg=253 ctermbg=223 gui=bold guifg=#f8f8f0 guibg=#465457
    hi Normal ctermfg=237 ctermbg=229
    hi FoldColumn ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=Grey
    " hi Folded term=bold,underline cterm=bold,underline ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=LightGrey
    hi Folded term=bold cterm=bold ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=LightGrey
    hi LineNr ctermfg=12 ctermbg=223 guifg=Brown
    hi CursorColumn ctermbg=223 guibg=Grey90
    hi CursorLine ctermbg=223 guibg=Grey90

    " Vim-notes plugin highlighting
    hi Title term=bold cterm=bold ctermfg=9 gui=bold guifg=Magenta

    " Change visual mode highlighting to something more pleasant
    hi Visual cterm=NONE term=NONE ctermbg=252 guibg=#d6d6d6
endif