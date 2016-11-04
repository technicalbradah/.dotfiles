" Add mapping to toggle the tagbar pane
nnoremap <leader>tb :TagbarToggle<CR>

" Auto close the tagbar pane when a tag is selected
let g:tagbar_autoclose=1

" Support BrightScript tags
let g:tagbar_type_brs = {
    \ 'ctagstype' : 'BrightScript',
    \ 'kinds'     : [
        \ 'f:functions',
        \ 'v:variables:1',
        \ 's:subs',
    \ ]
\ }
