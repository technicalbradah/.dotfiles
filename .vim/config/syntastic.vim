" Configure status line for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Enable Perl syntax checker
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

" Change default error and warning symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" Mapping to toggle syntastic
nnoremap <leader>st :SyntasticToggleMode<CR>
nnoremap <leader>sc :SyntasticCheck<CR>
nnoremap <leader>sr :SyntasticReset<CR>
