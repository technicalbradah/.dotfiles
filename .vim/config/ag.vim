if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor\ --column\ --hidden

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0

    " Use ag with the ack plugin if available
    let g:ackprg = 'ag --vimgrep --hidden'
endif
