"Idea from: https://noahfrederick.com/log/vim-templates-with-ultisnips-and-projectionist.html
""" To activate uncomment this file and ~/.vim/after/plugin/ultisnips_custom.vim also comment Plug 'pgilad/vim-skeletons' in ~/.vimrc
" function! s:try_expand(extension)
"     execute "normal! i_" . a:extension . "_skel\<C-R>=UltiSnips#ExpandSnippetOrJump()\<CR>"

"     if g:ulti_expand_or_jump_res == 0
"         silent! undo
"     else
"         return g:ulti_expand_or_jump_res
"     endif

"     execute "normal! i_skel\<C-R>=UltiSnips#ExpandSnippetOrJump()\<CR>"

"     if g:ulti_expand_or_jump_res == 0
"         silent! undo
"     else
"         return g:ulti_expand_or_jump_res
"     endif
" endfunction

" function! snippet#InsertSkeleton() abort
"     let filename = expand('%')
"     let extension = expand('%:e')

"     " Abort on non-empty buffer or extant file
"     if !(line('$') == 1 && getline('$') == '') || filereadable(filename)
"         return
"     endif

"     call s:try_expand(extension)
" endfunction
