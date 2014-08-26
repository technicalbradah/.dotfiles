" Disable cursor keys in vim
for prefix in ['i', 'n', 'v']
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
exe prefix . "noremap " . key . " <Nop>"
endfor
endfor

" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#incubate()
call pathogen#helptags()  " generate helptags for everything in 'runtimepath'

set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
set number                " show line numbers
"set laststatus=2          " last window always has a statusline
set hlsearch            
set incsearch             " But do highlight as you type your search.
"set ignorecase            " THIS IS STOOPID AND DANGEROUS. DON'T DO IT!!!!!!!!
set smartcase
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent

set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere

set cursorline

" change the mapleader from \ to ,
let mapleader=","
map <silent> <leader>h :set hlsearch!<CR>


"Show Tabs and EOLs
nmap <leader>l :set list!<CR>
imap <leader>l <ESC>:set list!<CR>i
set listchars=tab:▸\ ,eol:¬,trail:.

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

"Show Linenumbers
nmap <leader>n :set number!<CR>
imap <leader>n <ESC>:set number!<CR>i

"Solarized
syntax enable
let g:solarized_termtrans=1
let g:solarized_visibility="high"
let g:solarized_contrast="high"
set background=light
colorscheme Tomorrow
"colorscheme solarized
let g:airline_theme="molokai"

" Map jk to the Esc key
inoremap jk <Esc>

" Advanced % matching
runtime macros/matchit.vim

" Restore cusor to file position in previous edit
" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
set viminfo='10,\"100,:20,%,n~/.viminfo

" Set backup and swp dir. Don't forget to clear tmp dir out once in a while
set backupdir=~/tmp/.vim/backup
set directory=~/tmp/.vim/swp

" vim-airline configuration
let g:airline_powerline_fonts = 1

" Tabularize configuration
"if exists(":Tabularize")
nmap <Leader>t> :Tabularize /=><CR>
vmap <Leader>t> :Tabularize /=><CR>
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t: :Tabularize /:\zs<CR>
vmap <Leader>t: :Tabularize /:\zs<CR>
"endif

inoremap <silent> <Bar> <Bar><Esc>:call <SID>align()<CR>a
 
function! s:align()
    let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
        let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
        let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
        Tabularize/|/l1
        normal! 0
        call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction

"Create mapping to paste text to end of line
nmap <Leader>p $p

" Hack to get surround working correctly with lowercase s key
" See: https://github.com/tpope/vim-surround/commit/f6c9d3beb2d11959d22b2555636aeb0c37e66aa1
autocmd VimEnter * xmap s S

" Add brightscript syntax highlighting
au BufNewFile,BufRead *.brs setf brs

" Insert newline above or below without entering insert mode
nmap <C-K> O<Esc>
nmap <C-J> o<Esc>

" Perl syntax folding?
let perl_fold = 1

" Remap ; to :
nnoremap ; :
nnoremap ' ;
vnoremap ; :
vnoremap ' ;

"Turn on spell checking
" http://stackoverflow.com/questions/7286207/automatically-enabling-spell-checking-in-vimrc  
nmap <silent> <leader>s :set spell!<CR>

" Speed up saving of documents
nmap <leader>w ;w<CR>
nmap <leader>wq ;wq<CR>
nmap <leader>q ;q<CR>
imap <leader>w <ESC>;w<CR>
imap <leader>wq <ESC>;wq<CR>
imap <leader>q <ESC>;q<CR>

" Note taking
let g:notes_directories = ['~/Documents/Notes']
let g:notes_suffix = '.txt'
nmap <2-LeftMouse>  gf
"nmap <2-LeftMouse>  ;Open<CR>
"imap <2-LeftMouse>  <ESC>;Open<CR>
"autocmd Filetype notes setlocal mouse=a
nmap <leader>m :set mouse=a<CR>
nmap <leader>mn :set mouse=<CR>
imap <leader>m :set mouse=a<CR>
imap <leader>mn :set mouse=<CR>
autocmd Filetype notes nmap <leader>i ggjwgf
autocmd Filetype notes nmap <leader>f gf
autocmd Filetype notes nmap <leader>w ;w<CR>
autocmd Filetype notes nmap <leader>o gf
highlight def link notesRealURL Underlined

"%% SiSU Vim color file
"" Slate Maintainer: Ralph Amissah <ralph@amissah.com>
" (originally looked at desert Hans Fugal <hans@fugal.net>
" http://hans.fugal.net/vim/colors/desert.vim (2003/05/06)
" :set background=dark
" :highlight clear
" if version > 580
" hi clear
" if exists("syntax_on")
" syntax reset
" endif
" endif
" let colors_name = "slate"
" :hi Normal guifg=White guibg=grey15
" :hi Cursor guibg=khaki guifg=slategrey
" :hi VertSplit guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
" :hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey
" :hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7
" :hi IncSearch guifg=green guibg=black cterm=none ctermfg=yellow ctermbg=green
" :hi ModeMsg guifg=goldenrod cterm=none ctermfg=brown
" :hi MoreMsg guifg=SeaGreen ctermfg=darkgreen
" :hi NonText guifg=RoyalBlue guibg=grey15 cterm=bold ctermfg=blue
" :hi Question guifg=springgreen ctermfg=green
" :hi Search guibg=peru guifg=wheat cterm=none ctermfg=grey ctermbg=blue
" :hi SpecialKey guifg=yellowgreen ctermfg=darkgreen
" :hi StatusLine guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
" :hi StatusLineNC guibg=#c2bfa5 guifg=grey40 gui=none cterm=reverse
" :hi Title guifg=gold gui=bold cterm=bold ctermfg=yellow
" :hi Statement guifg=CornflowerBlue ctermfg=lightblue
" :hi Visual gui=none guifg=khaki guibg=olivedrab cterm=reverse
" :hi WarningMsg guifg=salmon ctermfg=1
" :hi String guifg=SkyBlue ctermfg=darkcyan
" :hi Comment term=bold ctermfg=11 guifg=grey40
" :hi Constant guifg=#ffa0a0 ctermfg=brown
" :hi Special guifg=darkkhaki ctermfg=brown
" :hi Identifier guifg=salmon ctermfg=red
" :hi Include guifg=red ctermfg=red
" :hi PreProc guifg=red guibg=white ctermfg=red
" :hi Operator guifg=Red ctermfg=Red
" :hi Define guifg=gold gui=bold ctermfg=yellow
" :hi Type guifg=CornflowerBlue ctermfg=2
" :hi Function guifg=navajowhite ctermfg=brown
" :hi Structure guifg=green ctermfg=green
" :hi LineNr guifg=grey50 ctermfg=3
" :hi Ignore guifg=grey40 cterm=bold ctermfg=7
" :hi Todo guifg=orangered guibg=yellow2
" :hi Directory ctermfg=darkcyan
" :hi ErrorMsg cterm=bold guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
" :hi VisualNOS cterm=bold,underline
" :hi WildMenu ctermfg=0 ctermbg=3
" :hi DiffAdd ctermbg=4
" :hi DiffChange ctermbg=5
" :hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
" :hi DiffText cterm=bold ctermbg=1
" :hi Underlined cterm=underline ctermfg=5
" :hi Error guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1
" :hi SpellErrors guifg=White guibg=Red cterm=bold ctermfg=7 ctermbg=1)
"Show Linenumbers



" CtrlP configuration & The Silver Searcher
if executable('ag')
    " Use <leader>cp to open ctrlp
    "let g:ctrlp_map = '<leader>cp'
    let g:ctrlp_map = '<c-p>'

    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor\ --column

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " Ignore these directories
    set wildignore+=*/build/**,*/tmp/*,*.so,*.swp,*.zip

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

" NERDTree configuration
nmap <leader>nt :NERDTreeToggle<CR>
