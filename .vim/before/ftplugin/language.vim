

if &ft ==? "vim"
    highlight OverLength ctermbg=magenta
    call matchadd('OverLength', '\%81v', 100)
endif

" Highlight column 80 when I get near it
"kasjgaksgaskgsalgkasjgkasjgjasgkasgkasjgkasgasjgkaskgakslgjaskgjlkajglkakajsgkjasgjasjgjsakg
"add to before/ftplugin/...
"if &ft != 'vim' 
"    hi ColorColumn ctermbg=magenta
"    call matchadd('ColorColumn', '\%81v', 100)
"endif
"
"if ( &ft != 'notes' && !exists("b:task_columns") )
"    hi ColorColumn ctermbg=magenta
"    call matchadd('ColorColumn', '\%81v', 100)
"endif
