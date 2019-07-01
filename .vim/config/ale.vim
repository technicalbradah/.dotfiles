"Use Coc for lsp
let g:ale_disable_lsp = 1

"Automatically fix on save
let g:ale_fix_on_save = 1

"Disable ALE's autocompletion, use coc instead
let g:ale_completion_enabled = 0

"Perl errors show up as warnings instead
" let g:ale_type_map = {
" \    'perl': {'ES': 'WS'},
" \    'perlcritic': {'ES': 'WS', 'E': 'W'},
" \}

"Fixers

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'perl': ['perltidy'],
\}

"Linters

let g:ale_linters = {'perl': ['perl','perlcritic']}

" Perl config
let g:ale_perl_perl_options = '-c -Mwarnings -Ilib -It/lib'
" Show Perl::Critic rules your code violates
let g:ale_perl_perlcritic_showrules = 1

"Candy
let g:ale_sign_error = ''
" let g:ale_sign_warning = ''

let g:ale_sign_error = '🛑'
let g:ale_sign_warning = '⚠️'

highlight ALEErrorSign ctermfg=160 ctermbg=223
highlight ALEWarningSign ctermfg=226 ctermbg=223

"Location list and :lnext/:lprev are wonky so create our own mappings
" https://github.com/tpope/vim-unimpaired/issues/145
let g:nremap = {"[a": "", "]a": "", "[A": "", "]A": ""}
nmap <silent> [a <Plug>(ale_previous_wrap)
nmap <silent> ]a <Plug>(ale_next_wrap)
nmap <silent> [A <Plug>(ale_first)
nmap <silent> ]A <Plug>(ale_last)
