" Quick and dirty solution to opening browser with URL under the cursor
" Require gnome-open command to be installed
" See here for example of how to possibly improve this: 
" https://github.com/drmikehenry/vimfiles/blob/9b987c0349c9b1739242369d3e2cd62deacfd28c/vimrc#L2423
let g:netrw_browsex_viewer= "gnome-open"

" Generic toggles

" Toggle folds

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

""" Restore cusor to file position in previous edit """

autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" :help 'viminfo'
let &viminfo="'50,<100,:100,%,n".g:localappdata.'/'.g:vim_impl.'/viminfo'

""" Ensure default dirs exist

set undofile
let &backupdir = g:localappdata . '/' . g:vim_impl . '/backup/'
let &directory = g:localappdata . '/' . g:vim_impl . '/swp/'
let &undodir   = g:localappdata . '/' . g:vim_impl . '/undo/'

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

" Customize split windows look/feel
" alternate fillchars: \┃, \║, \╬, \┋, \│, \⬯, \⬮, \⁑, \⋄
set fillchars=vert:\╬,fold:-
hi VertSplit term=bold cterm=bold ctermfg=251 ctermbg=67 gui=bold guifg=#f8f8f0 guibg=#465457
hi StatusLineNC ctermfg=67 ctermbg=67 gui=reverse guifg=#efefef guibg=#4d4d4c
hi StatusLine ctermfg=67 ctermbg=67

" Use this for paging because my tmux prefix is <c-f>
nnoremap <C-Space> <PageUp>
nmap <C-@> <C-Space>
nnoremap <Space> <PageDown>

" Automatically write on :make
set autowrite

" Gundo

if has('python3')
    let g:gundo_prefer_python3 = 1
endif

" Ripgrep the grep
set grepprg=rg\ --vimgrep

" Shift key bad juju, I do this a lot so map it
nnoremap z] zA

"Sane diff colors
hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText
hi DiffAdd ctermbg=157 " lightgreen
hi DiffChange ctermbg=222 " lightorange
hi DiffDelete ctermbg=224 " lightred/pink
hi DiffText ctermbg=228

"Better integration with system clipboard via xclip
set clipboard+=unnamedplus

" Minimize spacing around line number column
set nuw=1
