" Where to store notes
let g:notes_directories = ['~/Documents/Notes']

" Note files suffix
let g:notes_suffix = '.txt'

" An attempt to make URLs stand out
hi def link notesRealURL Underlined
hi Title term=bold cterm=bold ctermfg=9 gui=bold guifg=Magenta

" Short cuts to speed up note taking
nmap <2-LeftMouse>  gf
"nmap <2-LeftMouse>  ;Open<CR>
"imap <2-LeftMouse>  <ESC>;Open<CR>
"autocmd Filetype notes setlocal mouse=a
nmap <leader>m :set mouse=a<CR>
nmap <leader>mn :set mouse=<CR>
imap <leader>m :set mouse=a<CR>
imap <leader>mn :set mouse=<CR>
autocmd Filetype notes nmap <leader>i ggjwgf
autocmd Filetype notes nmap <leader>f gf
autocmd Filetype notes nmap <leader>u ggj3Wgf
autocmd Filetype notes nmap <leader>w ;w<CR>
autocmd Filetype notes nmap <leader>o gf

" Vim-notes plugin highlighting
hi Title term=bold cterm=bold ctermfg=9 gui=bold guifg=Magenta
