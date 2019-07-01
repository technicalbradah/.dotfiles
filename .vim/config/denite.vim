if executable('rg')
    call denite#custom#var('file/rec', 'command',
                \ ['rg', '--hidden', '--files', '--glob', '!.git'])

    " Ripgrep command on grep source
    call denite#custom#var('grep', 'command', ['rg'])
    call denite#custom#var('grep', 'default_opts',
            \ ['--vimgrep', '--no-heading', '-PS'])
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])
endif

" default options
call denite#custom#source('_', 'matchers', ['matcher/fruzzy'])
call denite#custom#option('_', 'input', '')
call denite#custom#option('_', 'prompt', '▶ ')
call denite#custom#option('_', 'start_filter', v:true)
call denite#custom#option('_', 'auto_resize', v:true)
call denite#custom#option('_', 'split', 'floating')
call denite#custom#option('_', 'winminheight', 1)

" highlights
call denite#custom#option('_', 'highlight_mode_insert', 'CursorLine')
call denite#custom#option('_', 'highlight_mode_insert', 'CursorLine')
call denite#custom#option('_', 'highlight_matched_range', 'Tag')
call denite#custom#option('_', 'highlight_matched_char', 'Tag')

augroup denite_custom
  " call funcs to set options for denite list and filter windows
  autocmd!
  autocmd FileType denite-filter call s:denite_filter_settings()
  autocmd FileType denite call s:denite_settings()
augroup END

function! s:denite_settings() abort
  nnoremap <silent><buffer><expr> <CR>      denite#do_map('do_action')
  nnoremap <silent><buffer><expr> p         denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q         denite#do_map('quit')
  nnoremap <silent><buffer><expr> <Esc>     denite#do_map('quit')
  nnoremap <silent><buffer><expr> i         denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer> <c-n>           j
  nnoremap <silent><buffer> <c-p>           k
endfunction

function! s:denite_filter_settings() abort
  imap <silent><buffer><expr> <Esc> denite#do_map('quit')
  inoremap <silent><buffer> <C-n> <Esc>:bd<cr><c-w>w
  inoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
endfunction

" nmap <leader>db :Denite buffer -split=verticle -winrow=1<CR>
" nmap <leader>df :Denite file/rec -split=verticle -winrow=1<CR>/
" nnoremap <leader>dr :<C-u>Denite grep:. -no-empty<CR>
" nnoremap <leader>dw :<C-u>DeniteCursorWord grep:.<CR>

" nnoremap <silent> <leader><space> :<C-u>Denite file/rec buffer<cr>
" nnoremap <silent> <leader>r :<C-u>Denite file_mru<cr>
" nnoremap <silent> <c-tab> :<C-u>Denite  file_mru<cr>
" nnoremap <silent> <leader>o :<C-u>DeniteProjectDir file/rec<cr>
" nnoremap <silent> <leader>t :<C-u>DeniteProjectDir tag<cr>
" nnoremap <silent> <leader>, :<C-u>DeniteBufferDir file/rec<cr>
" nnoremap <silent> <leader>c :<C-u>Denite change<cr>
" nnoremap <silent> <leader>l :<C-u>Denite line<cr>
" nnoremap <silent> <leader>co :<C-u>Denite colorscheme<cr>
" nnoremap <silent> <leader>: :<C-u>Denite command<cr>
" " nnoremap <silent> <leader>j :<C-u>Denite jump<cr>
" nnoremap <silent> <leader>m :<C-u>Denite marks<cr>
" nnoremap <silent> <leader>* :<C-u>Denite grep:::`expand('<cword>')`<cr>
" nnoremap <silent> <leader>y :<C-u>Denite neoyank<cr>
" " interactive grep mode
" nnoremap <silent> <leader>g :<C-u>Denite -split=bottom grep:::!<cr>
