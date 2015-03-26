" Default to listing all tasks
let g:task_rc_override = 'rc.defaultheight=0'

" Change default TW report type
let g:task_report_name     = 'long'

" Fix line wrapping issues
let g:task_rc_override = 'rc.defaultwidth=0'

" Default colorscheme
" highlight default link taskwarrior_Status      Include
" highlight default link taskwarrior_depends     Todo
" highlight default link taskwarrior_description Normal
" highlight default link taskwarrior_due         Todo
" highlight default link taskwarrior_end         Keyword
" highlight default link taskwarrior_entry       Special
" highlight default link taskwarrior_field       IncSearch
" highlight default link taskwarrior_id          VarId
" highlight default link taskwarrior_priority    Class
" highlight default link taskwarrior_project     String
" highlight default link taskwarrior_selected    Visual
" highlight default link taskwarrior_tablehead   Tabline
" highlight default link taskwarrior_tags        Keyword
" highlight default link taskwarrior_urgency     Todo
" highlight default link taskwarrior_uuid        VarId
  
" Update colorscheme
"hi taskwarrior_priority    cleared
hi taskwarrior_Status      ctermfg=9 guifg=Purple
hi taskwarrior_depends     term=bold cterm=bold ctermfg=5 guifg=Blue guibg=Yellow
hi taskwarrior_description term=standout ctermfg=28 gui=bold guifg=#008700
hi taskwarrior_due         term=bold cterm=bold ctermfg=5 guifg=Blue guibg=Yellow
hi taskwarrior_end         ctermfg=2 gui=bold guifg=Brown
hi taskwarrior_entry       ctermfg=1 guifg=SlateBlue
hi taskwarrior_field       term=standout cterm=standout ctermfg=9 gui=reverse
hi taskwarrior_id          ctermfg=4
hi taskwarrior_project     ctermfg=6 guifg=Magenta
hi taskwarrior_selected    term=reverse cterm=reverse ctermfg=12 ctermbg=15 guibg=LightGrey
hi taskwarrior_tablehead term=underline cterm=underline ctermfg=25 gui=underline guifg=SlateBlue
hi taskwarrior_tags        ctermfg=2 gui=bold guifg=Brown
hi taskwarrior_urgency     term=bold cterm=bold ctermfg=5 guifg=Blue guibg=Yellow
hi taskwarrior_uuid        ctermfg=4

" Turn off field highlighting
let g:task_highlight_field = 0
