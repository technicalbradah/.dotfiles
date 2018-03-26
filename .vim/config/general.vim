" Quick and dirty solution to opening browser with URL under the cursor
" Require gnome-open command to be installed
" See here for example of how to possibly improve this: 
" https://github.com/drmikehenry/vimfiles/blob/9b987c0349c9b1739242369d3e2cd62deacfd28c/vimrc#L2423
let g:netrw_browsex_viewer= "gnome-open"

" Generic toggles

" Toggle folds
nmap <leader>fo zA

" Ease window navigation
"nnoremap <c-h> <c-w>h
"nnoremap <c-j> <c-w>j
"nnoremap <c-k> <c-w>k
"nnoremap <c-l> <c-w>l

"nmap <c-h> <c-w>h
"nmap <c-j> <c-w>j
"nmap <c-k> <c-w>k
"nmap <c-l> <c-w>l

" Custom fold text line based on
" http://vim.wikia.com/wiki/Customize_text_for_closed_folds
set foldtext=MyFoldText()
function! MyFoldText()
  let line = getline(v:foldstart)
  if match( line, '^[ \t]*\(\/\*\|\/\/\)[*/\\]*[ \t]*$' ) == 0
    let initial = substitute( line, '^\([ \t]\)*\(\/\*\|\/\/\)\(.*\)', '\1\2', '' )
    let linenum = v:foldstart + 1
    while linenum < v:foldend
      let line = getline( linenum )
      let comment_content = substitute( line, '^\([ \t\/\*]*\)\(.*\)$', '\2', 'g' )
      if comment_content != ''
        break
      endif
      let linenum = linenum + 1
    endwhile
    let sub = initial . ' ' . comment_content
  else
    let sub = line
    let startbrace = substitute( line, '^.*{[ \t]*$', '{', 'g')
    if startbrace == '{'
      let line = getline(v:foldend)
      let endbrace = substitute( line, '^[ \t]*}\(.*\)$', '}', 'g')
      if endbrace == '}'
        let sub = sub.substitute( line, '^[ \t]*}\(.*\)$', '...}\1', 'g')
      endif
    endif
  endif
  let n = v:foldend - v:foldstart + 1
  let info = " (" . n . ") lines   "
  let sub = sub . "                                                                                                                  "
  let num_w = getwinvar( 0, '&number' ) * getwinvar( 0, '&numberwidth' )
  let fold_w = getwinvar( 0, '&foldcolumn' )
  let sub = strpart( sub, 0, winwidth(0) - strlen( info ) - num_w - fold_w - 1 )
  "strip whitespace
  let new_sub = substitute( sub, '^\s*\(.\{-}\)$', '\1', '')
  return "▶ " . new_sub . info
endfunction

"Testing transparent terminal background support
" Default is transparent background
" hi Normal ctermfg=10 ctermbg=none guifg=#4d4d4c guibg=#fafafa
" nnoremap tton :hi Normal ctermfg=10 ctermbg=none guifg=#4d4d4c guibg=#fafafa<CR>
" nnoremap ttoff :hi Normal ctermfg=10 ctermbg=15 guifg=#4d4d4c guibg=#fafafa<CR>


" Improves loading of files larger than 10mb
let g:LargeFile = 1024 * 1024 * 10
augroup LargeFile 
    autocmd BufReadPre * let f=getfsize(expand("<afile>")) | if f > g:LargeFile || f == -2 | call LargeFile() | endif
augroup END

function! LargeFile()
    " no syntax highlighting etc
    set eventignore+=FileType
    " save memory when other file is viewed
    setlocal bufhidden=unload
    " is read-only (write with :w new_filename)
    setlocal buftype=nowrite
    " no undo possible
    setlocal undolevels=-1
    " display message
    autocmd VimEnter *  echo "The file is larger than " .  (g:LargeFile / 1024 / 1024) . " MB, so some options are changed (see .vimrc for details)."
endfunction


" Avoid Markdown files from being ft=Modula2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Disable autocommenting
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

""" Configure Dutyl for DCD
let g:dutyl_stdImportPaths=['/usr/include/dmd']

" Set filetype for diet templates
autocmd BufNewFile,BufReadPost *.dt set filetype=pug

""" Ensure default dirs exist

set undofile
set backupdir =$LOCALAPPDATA/$VIM_IMPL/backup/
set directory =$LOCALAPPDATA/$VIM_IMPL/swp/
set undodir   =$LOCALAPPDATA/$VIM_IMPL/undo/

" Create missing folders
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" Colorscheme customization
if g:tomorrow_customize ==? 'gruvbox-terminator'
    "Custom highlighting for Tomorrow colorscheme
    "modifies the scheme to use some colors from gruvbox scheme
    hi Keyword    ctermfg=91
    hi SignColumn term=bold cterm=bold ctermfg=253 ctermbg=7 gui=bold guifg=#f8f8f0 guibg=#465457
    hi Normal ctermfg=237 ctermbg=229
    hi FoldColumn ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=Grey
    hi Folded term=bold,underline cterm=bold,underline ctermfg=10 ctermbg=223 guifg=DarkBlue guibg=LightGrey
    hi LineNr ctermfg=12 ctermbg=223 guifg=Brown
    hi CursorColumn ctermbg=223 guibg=Grey90
    hi CursorLine ctermbg=223 guibg=Grey90

    " Vim-notes plugin highlighting
    hi Title term=bold cterm=bold ctermfg=9 gui=bold guifg=Magenta
elseif g:tomorrow_customize ==? 'solarized'
    "Custom highlighting for Tomorrow colorscheme
    "modifies the scheme to use some colors from solarized scheme
    hi Keyword    ctermfg=91
    hi SignColumn term=bold cterm=bold ctermfg=253 ctermbg=7 gui=bold guifg=#f8f8f0 guibg=#465457
    hi Normal ctermfg=10 ctermbg=15
    hi FoldColumn ctermfg=10 ctermbg=7 guifg=DarkBlue guibg=Grey
    hi Folded term=bold,underline cterm=bold,underline ctermfg=10 ctermbg=7 guifg=DarkBlue guibg=LightGrey
"    hi LineNr term=underline ctermfg=25 ctermbg=7 guifg=Brown
    hi LineNr ctermfg=12 ctermbg=7 guifg=Brown
    hi CursorColumn ctermbg=7 guibg=Grey90
    hi CursorLine ctermbg=7 guibg=Grey90

    " Vim-notes plugin highlighting
    hi Title term=bold cterm=bold ctermfg=9 gui=bold guifg=Magenta
endif

" Customize split windows look/feel
set fillchars=vert:\ ,fold:-
hi VertSplit term=bold cterm=bold ctermfg=253 ctermbg=67 gui=bold guifg=#f8f8f0 guibg=#465457
hi StatusLineNC ctermfg=67 ctermbg=67 gui=reverse guifg=#efefef guibg=#4d4d4c

" Quickly change buffers
nmap <SPACE> ;bn<cr>
