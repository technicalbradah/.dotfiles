let g:gitgutter_sign_added = '✚'
" let g:gitgutter_sign_modified = '➜'
let g:gitgutter_sign_modified = '𝜟'
let g:gitgutter_sign_removed = '✘'
let g:gitgutter_sign_modified_removed = '✪'

" Always show the sign column 
if exists('&signcolumn')
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" gitgutter plugin config
hi GitGutterChange ctermfg=208 ctermbg=223 guifg=#bbbb00 guibg=#fafafa
hi GitGutterAdd ctermfg=28 ctermbg=223 guifg=#009900 guibg=#fafafa
hi GitGutterDelete ctermfg=160 ctermbg=223 guifg=#ff2222 guibg=#fafafa
