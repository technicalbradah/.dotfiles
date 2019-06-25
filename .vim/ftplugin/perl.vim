
" autocmd FileType perl noremap K :!echo <cword> <bar> perl -e '$line = <STDIN>; if ($line =~ /([\w:]+)/){exec("perldoc $1 <bar><bar> perldoc -f $1")}' 2>/dev/null<cr>
noremap K :!echo <cword> <bar> perl -e '$line = <STDIN>; if ($line =~ /([\w:]+)/){exec("perldoc $1 <bar><bar> perldoc -f $1")}' 2>/dev/null<cr>
