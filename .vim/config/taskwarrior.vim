" Default to listing all tasks
let g:task_rc_override = 'rc.defaultheight=0'

" Change report type
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
hi taskwarrior_tablehead term=underline cterm=underline ctermfg=25 gui=underline guifg=SlateBlue
hi taskwarrior_description term=standout ctermfg=28 gui=bold guifg=#008700
