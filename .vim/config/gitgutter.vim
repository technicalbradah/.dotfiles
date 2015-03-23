"Turn on highlighting by default
"http://stackoverflow.com/questions/1384380/is-there-a-unicode-glyph-that-looks-like-a-key-icon
"http://stackoverflow.com/questions/17506279/change-border-width-of-splits-in-vim
"let g:gitgutter_highlight_lines = 1
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_removed = '✘'
hi GitGutterChange ctermfg=208 ctermbg=67 guifg=#bbbb00 guibg=#fafafa
hi GitGutterAdd ctermfg=28 ctermbg=67 guifg=#009900 guibg=#fafafa
hi GitGutterDelete ctermfg=160 ctermbg=67 guifg=#ff2222 guibg=#fafafa
":hi LineNr term=bold ctermfg=35 guifg=DarkGrey
":set fillchars=vert:\ ,fold:-
":hi VertSplit term=underline ctermbg=25 guibg=#efefef
"hi StatusLineNC ctermfg=25 ctermbg=25 gui=reverse guifg=#efefef guibg=#4d4d4c
"http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
set fillchars=vert:\ ,fold:-
hi VertSplit term=bold cterm=bold ctermfg=253 ctermbg=67 gui=bold guifg=#f8f8f0 guibg=#465457
hi StatusLineNC ctermfg=67 ctermbg=67 gui=reverse guifg=#efefef guibg=#4d4d4c
