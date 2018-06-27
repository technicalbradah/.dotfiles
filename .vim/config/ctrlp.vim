" No longer need...because -> fzf
" " Use <c-p> to open ctrlp
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_show_hidden = 1

" " Fuzzy filename search
" if executable('rg')
"     " Use rg over grep
"     set grepprg=rg\ --vimgrep
"     set grepformat=%f:%l:%c:%m,%f:%l:%m

"     " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"     let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

"     " rg is fast enough that CtrlP doesn't need to cache
"     let g:ctrlp_use_caching = 0

"     " Use rg with the ack plugin if available
"     let g:ackprg = 'rg --vimgrep --hidden --smart-case'
    
" elseif executable('ag')
"     " Use ag over grep
"     set grepprg=ag\ --nogroup\ --nocolor\ --column\ --hidden\ --vimgrep\ --ignore=\"**.min.js\"
"     set grepformat=%f:%l:%c:%m,%f:%l:%m

"     " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
"     let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"     " ag is fast enough that CtrlP doesn't need to cache
"     let g:ctrlp_use_caching = 0

"     " Use ag with the ack plugin if available
"     let g:ackprg = 'ag --vimgrep --hidden --smart-case'
    
"     "  start searching from project root instead of the cwd
"     let g:ag_working_path_mode="r"

"     " Some nice shortcuts
"     " cnoreabbrev ag Ack                                                                           
"     " cnoreabbrev aG Ack                                                                           
"     " cnoreabbrev Ag Ack                                                                           
"     " cnoreabbrev AG Ack  
" elseif executable('ack')
"     set grepprg=ack\ --nogroup\ --nocolor\ --ignore-case\ --column
"     set grepformat=%f:%l:%c:%m,%f:%l:%m
" endif
