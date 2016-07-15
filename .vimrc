""" Initial Settings """

" Set <leader> to ,
let mapleader=","

" Map jk to the Esc key
inoremap jk <Esc>
" This screws up deleting with x when selecting in visual mode
"vnoremap jk <Esc>
vnoremap vv <Esc>

" Remap ; to :
nnoremap ; :
nnoremap ' ;
vnoremap ; :
vnoremap ' ;

" Disable arrow keys
for prefix in ['i', 'n', 'v']
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
exe prefix . "noremap " . key . " <Nop>"
endfor
endfor

" Enable syntax highlighting
syntax enable             " enable syntax highlighting

""" Make sure vim-plug is installed and loaded """
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -sfLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source ~/.vimrc
endif

""" Set Vim Variables """

set autoindent            " auto-indent
set cursorline
set hidden                " SEE: http://nvie.com/posts/how-i-boosted-my-vim/
set hlsearch              " All search matches should be highlighted
"set ignorecase            " THIS IS STOOPID AND DANGEROUS if you're programming in a language that champions lowercase variable and keyword names. Because :s/<lowercase_pattern>/.../ will ignore case when searching/replacing <lowercase_pattern> DON'T DO IT!!!!!!!!
"http://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim
set incsearch             " But do highlight as you type your search.
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
set number                " show line numbers
set ruler                 " Always show info along bottom.
"set smartcase             " This only works when ignorecase is set, instead of this search using \c to ignore case. E.g. /\cmysearchterm
"set splitbelow
set splitright
set t_Co=256              " enable 256-color mode.
set wildignore=*.so,*.swp,*.zip,*.bak,*.class,*.pyc
set wildmode=longest,list

""" Default Tab Stops """

set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere



""" Enable the following plugins """

call plug#begin('~/.vim/plugged')

"Plug 'edkolev/promptline.vim'
"Plug 'edkolev/tmuxline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do' : '~/.vim/plugged/YouCompleteMe/install.py --gocode-completer --tern-completer'  }
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chase/vim-ansible-yaml', { 'for' : ['yaml']  }
Plug 'christoomey/vim-tmux-navigator'
Plug 'ervandew/supertab'
"Plug 'farseer90718/vim-taskwarrior'
Plug 'blindFS/vim-taskwarrior', { 'on': ['TW'] }
Plug 'gcmt/wildfire.vim'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'kchmck/vim-coffee-script', { 'for' : ['coffee']  }
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'matchit.zip'
Plug 'mattn/emmet-vim', { 'for' : ['javascript', 'html', 'css', 'scss', 'less']  }
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind']  }
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'szw/vim-ctrlspace'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-after'
"Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/dbext.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-shell'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'pangloss/vim-javascript', { 'for' : ['javascript', 'html', 'css', 'scss', 'less']  }
""" End of Plugs list """

call plug#end()



""" Leader Mappings [ALL]    """

map <silent> <leader>h :set hlsearch!<CR>" Enable/Disable highlighted matches

""" Leader Mappings [INSERT] """

"imap <leader>l <ESC>:set list!<CR>" SEE BELOW
imap <leader>n <ESC>:set number!<CR>" Show/Hide line numbers
imap <leader>Q <ESC>:q!<CR>" Quit without saving
imap <leader>q <ESC>:q<CR>" Quit
imap <leader>qa <ESC>:qa<CR>" Quit All
imap <leader>w <ESC>:w<CR>" Save the document
imap <leader>wa <ESC>:wa<CR>" Save all documents
imap <leader>wq <ESC>:wq<CR>" Save and Quit

""" Leader Mappings [NORMAL] """

"nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>ev :e ~/.vimrc<CR>
"nmap <leader>l :set list!<CR>" SEE BELOW
nmap <leader>n :set number!<CR>" Show/Hide line numbers
nmap <Leader>p $p" Paste the " buffer to the end of the line
nmap <Leader>P $a<Space><ESC>p" Paste the " buffer to the end of the line with a space
nmap <leader>Q :q!<CR>" Quit without saving
nmap <leader>q :q<CR>" Quit
nmap <leader>qa :qa<CR>" Quit
"nmap <silent> <leader>s :set spell!<CR>" Enable/Disable spell checking
nmap <leader>sv :so ~/.vimrc<CR>" Source ~/.vimrc
"nmap <leader>t: :Tabularize /:\zs<CR>
"nmap <leader>t= :Tabularize /=<CR>
"nmap <leader>t> :Tabularize /=><CR>
nmap <leader>w :w<CR>" Save the document
nmap <leader>wa :wa<CR>" Save the document
nmap <leader>wq :wq<CR>" Save and Quit

""" Leader Mappings [VISUAL] """

"vmap <leader>t: :Tabularize /:\zs<CR>
"vmap <leader>t= :Tabularize /=<CR>
"vmap <leader>t> :Tabularize /=><CR>

""" Other Mappings """

nmap <leader>O O<Esc>" Insert Newline above current line
nmap <leader>o o<Esc>" Insert Newline below current line


""" Enable correct syntax highlighting """

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" Add brightscript syntax highlighting
au BufNewFile,BufRead *.brs setf brs


""" Show Tabs, spaces at the end of lines, and invisible (Ctrl) chars """
""" See: http://vimcasts.org/episodes/show-invisibles/ """

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬,trail:.
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


""" Solarized Colorscheme """

"let g:solarized_termtrans=1
"let g:solarized_visibility="high"
"let g:solarized_contrast="high"
"colorscheme solarized


""" Tomorrow Night Color Scheme """

set background=light
colorscheme Tomorrow-solarized-bradah


""" Restore cusor to file position in previous edit """
""" Restore cusor to file position in previous edit """
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
set viminfo='50,\"100,:20,%,n~/tmp/.vim/.viminfo


""" Set backup and swp dir. Don't forget to clear tmp dir out once in a while """

set backupdir=~/tmp/.vim/backup
set directory=~/tmp/.vim/swp//


" Perl syntax folding?
set foldmethod=syntax
set foldlevelstart=0            "Increase this number to reduce the amount of default folding
let perl_fold = 1
let perl_fold_blocks = 1

" Include other configs
runtime! config/**/*.vim

" TODO:
" - launch NerdTree pane by default or only for certain types of projects
" - Add YouCompleteMe
" - http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
"   http://www.reddit.com/r/vim/comments/1pgqdn/are_youcompleteme_and_supertab_mutually_exclusive/

" TODO: Trying this stuff out
nnoremap n nzz
nnoremap N Nzz
nnoremap } }zz
nnoremap { {zz

" Default to utf-8 encoding
set encoding=utf-8
set fileencoding=utf-8
