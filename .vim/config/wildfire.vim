" Change default mappings to space key instead of enter
" map <SPACE> <Plug>(wildfire-fuel)
" vmap <SPACE> <Plug>(wildfire-fuel)

"Add tag select for html and xml files
let g:wildfire_objects = {
    \ "*" : ["ip", "i'", 'i"', "i)", "i]", "i}", "it", "at", "i>"]
\ }

"cal wildfire#triggers#Add("<ENTER>", {
"    \ "html,xml" : ["at", "it"],
"\ })
