"Idea from: https://noahfrederick.com/log/vim-templates-with-ultisnips-and-projectionist.html

if !exists('did_plugin_ultisnips')
    finish
endif

augroup ultisnips_custom
    autocmd!
    autocmd BufNewFile * silent! call snippet#InsertSkeleton()
augroup END
