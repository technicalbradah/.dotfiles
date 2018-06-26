" Disable YouCompleteMe preview pane
" For other ways of doing it see:
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
" REFs:
" - http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"   http://www.reddit.com/r/vim/comments/1pgqdn/are_youcompleteme_and_supertab_mutually_exclusive/
set completeopt=menu,menuone
"Make YCM/Snipmate/Supertab/Syntastic play nice together
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_collect_identifiers_from_tags_files = 1
"Must specify when using completion in minimal (E.g. containerized) environments
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']

let g:ycm_server_python_interpreter = 'python3'
