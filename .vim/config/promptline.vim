let g:promptline_theme = 'airline'
"let g:promptline_preset = {
"        \'a' : [ promptline#slices#user() ],
"        \'b' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
"        \'c' : [ promptline#slices#cwd()  ],
"        \'y' : [ promptline#slices#vcs_branch(), promptline#slices#git_status(), '$(git rev-parse --short HEAD 2>/dev/null)' ],
"        \'z' : [ promptline#slices#jobs()  ],
"        \'warn' : [ promptline#slices#last_exit_code()  ]}

let g:promptline_preset = {
        \'a' : [ promptline#slices#user() ],
        \'b' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
        \'c' : [ promptline#slices#cwd()  ],
        \'y' : [ '$(basename `git rev-parse --show-toplevel 2>/dev/null` 2>/dev/null)', promptline#slices#git_status(), promptline#slices#vcs_branch() ],
        \'z' : [ promptline#slices#jobs()  ],
        \'warn' : [ promptline#slices#last_exit_code()  ]}
