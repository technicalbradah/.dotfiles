" Disable YouCompleteMe preview pane
" For other ways of doing it see:
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
" REFs:
" - http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"   http://www.reddit.com/r/vim/comments/1pgqdn/are_youcompleteme_and_supertab_mutually_exclusive/
set completeopt=menu,menuone
"Make YCM/Snipmate/Supertab/Syntastic play nice together
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_key_list_select_completion = ['<C-TAB>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-TAB>', '<Up>']
let g:ycm_collect_identifiers_from_tags_files = 1
let g:SuperTabDefaultCompletionType = '<C-Tab>'
