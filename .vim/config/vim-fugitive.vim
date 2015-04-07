"vim-fugitive shortcuts

nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>dg :diffget<CR>
vnoremap <leader>dg :diffget<CR>
nnoremap <leader>dp :diffput<CR>
vnoremap <leader>dp :diffput<CR>
nnoremap <leader>du :diffupdate<CR>
vnoremap <leader>du :diffupdate<CR>

"Colorscheme
hi default link gitcommitUnmergedFile WarningMsg
hi default link gitcommitUntrackedFile WarningMsg
hi gitcommitFile ctermfg=64 guifg=#718c00
