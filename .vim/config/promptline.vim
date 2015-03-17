let g:promptline_theme = 'airline'

"Use this once I swtich to ZSH everywhere
"let g:promptline_preset = {
"        \'a' : [ promptline#slices#user() ],
"        \'b' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
"        \'c' : [ promptline#slices#cwd()  ],
"        \'x' : [ promptline#slices#git_status() ],
"        \'y' : [ promptline#slices#vcs_branch() ],
"        \'z' : [ promptline#slices#jobs()  ],
"        \'warn' : [ promptline#slices#last_exit_code()  ]}

let g:promptline_preset = {
        \'a' : [ promptline#slices#user() ],
        \'b' : [ promptline#slices#host({ 'only_if_ssh': 1 }) ],
        \'c' : [ promptline#slices#cwd()  ],
        \'y' : [ promptline#slices#vcs_branch(), promptline#slices#git_status(), '$(git rev-parse --short HEAD 2>/dev/null)' ],
        \'z' : [ promptline#slices#jobs()  ],
        \'warn' : [ promptline#slices#last_exit_code()  ]}
