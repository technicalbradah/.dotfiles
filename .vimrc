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


""" Set Vim Variables """

set autoindent            " auto-indent
set cursorline
set hlsearch              " All search matches should be highlighted
"set ignorecase            " THIS IS STOOPID AND DANGEROUS. DON'T DO IT!!!!!!!!
set incsearch             " But do highlight as you type your search.
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
set number                " show line numbers
set ruler                 " Always show info along bottom.
set smartcase
set t_Co=256              " enable 256-color mode.
set wildignore=*/tmp/*,*.so,*.swp,*.zip,*.bak,*.class,*.pyc

""" Default Tab Stops """

set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere


""" Enable Vundle NOTE Move below Mappings to accept default mappings for below plugins """

filetype off " Pathogen needs to run before plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

""" Enable the following plugins """

Plugin 'rking/ag.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'matchit.zip'
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'gmarik/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'tpope/vim-sensible'
Plugin 'xolox/vim-shell'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
"Plugin 'Valloric/YouCompleteMe'


""" End of Plugins list """

call vundle#end()


""" Leader Mappings [ALL]    """

map <silent> <leader>h :set hlsearch!<CR>" Enable/Disable highlighted matches

""" Leader Mappings [INSERT] """

"imap <leader>l <ESC>:set list!<CR>" SEE BELOW
imap <leader>n <ESC>:set number!<CR>" Show/Hide line numbers
imap <leader>Q <ESC>;q!<CR>" Quit without saving
imap <leader>q <ESC>;q<CR>" Quit
imap <leader>w <ESC>;w<CR>" Save the document
imap <leader>wq <ESC>;wq<CR>" Save and Quit

""" Leader Mappings [NORMAL] """

"nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>ev :e ~/.vimrc<CR>
"nmap <leader>l :set list!<CR>" SEE BELOW
nmap <leader>n :set number!<CR>" Show/Hide line numbers
nmap <Leader>p $p" Paste the " buffer to the end of the line
nmap <Leader>P $<Space>p" Paste the " buffer to the end of the line with a space
nmap <leader>Q ;q!<CR>" Quit without saving
nmap <leader>q ;q<CR>" Quit
nmap <silent> <leader>s :set spell!<CR>" Enable/Disable spell checking
nmap <leader>sv :so ~/.vimrc<CR>" Source ~/.vimrc
"nmap <leader>t: :Tabularize /:\zs<CR>
"nmap <leader>t= :Tabularize /=<CR>
"nmap <leader>t> :Tabularize /=><CR>
nmap <leader>w ;w<CR>" Save the document
nmap <leader>wq ;wq<CR>" Save and Quit

""" Leader Mappings [VISUAL] """

"vmap <leader>t: :Tabularize /:\zs<CR>
"vmap <leader>t= :Tabularize /=<CR>
"vmap <leader>t> :Tabularize /=><CR>

""" Other Mappings """

nmap <C-K> O<Esc>                             " Insert Newline above current line
nmap <C-J> o<Esc>                             " Insert Newline below current line


""" Enable correct syntax highlighting """

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" Add brightscript syntax highlighting
au BufNewFile,BufRead *.brs setf brs


""" Show Tabs, spaces at the end of lines, and invisible (Ctrl) chars """
""" See: http://vimcasts.org/episodes/show-invisibles/ """

nmap <leader>l :set list!<CR>
imap <leader>l <ESC>:set list!<CR>i
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
colorscheme Tomorrow


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
set viminfo='10,\"100,:20,%,n~/.viminfo


""" Set backup and swp dir. Don't forget to clear tmp dir out once in a while """

set backupdir=~/tmp/.vim/backup
set directory=~/tmp/.vim/swp


" Perl syntax folding?
let perl_fold = 1

" Include other configs
runtime! config/**/*.vim

" TODO:
" - launch NerdTree pane by default or only for certain types of projects
" - Add YouCompleteMe
" - http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
