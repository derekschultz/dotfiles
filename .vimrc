execute pathogen#infect()

" change the mapleader from \ to <Space>
let mapleader = "\<Space>"
" <Space>w to save
nnoremap <Leader>w :w<CR>

set nocompatible              " choose no compatibility with legacy vi
filetype plugin indent on     " load filetype plugins + indentation

"" Whitespace
set nowrap                    " don't wrap lines
set tabstop=2 shiftwidth=2    " a tab is two spaces
set expandtab                 " use spaces, not tabs

"" Searching
set hlsearch                  " highlight matches
set incsearch                 " incremental searching
set ignorecase                " searches are case insensitive...
set smartcase                 " ... unless they contain at least one capital letter

syntax enable                 " enable syntax highlighting
set relativenumber

" Display extra whitespace
set list
set listchars=tab:\ \ ,eol:¬,nbsp:⋅,trail:•

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

"80 char limit
"let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn cterm=bold ctermbg=234 guibg=#003333

set laststatus=2
set backspace=indent,eol,start

set background=dark

set noswapfile

map <Leader>n :NERDTreeToggle<CR>
set pastetoggle=<F2>

let NERDTreeShowHidden=1
let g:netrw_altv = 1
let g:netrw_winsize = 70
let g:netrw_preview = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 30
let g:netrw_browse_split = 3
let g:headlights_use_plugin_menu = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#csv#enabled = 0
let g:vimshell_editor_command = "vim"
let g:gist_post_private = 1
let g:multi_cursor_exit_from_visual_mode = 0
let g:multi_cursor_exit_from_insert_mode = 0
let g:gitgutter_sign_column_always = 1
let g:gitgutter_realtime = 0

let g:neocomplete#enable_at_startup = 1

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_disable_autoinstall = 0

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>m <Plug>(go-rename)


" source: http://www.bestofvim.com/tip/auto-reload-your-vimrc/
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

let g:syntastic_ruby_checkers     = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_exec = '/Users/dschultz/.gem/ruby/2.1.5/bin/rubocop'
let g:syntastic_enable_balloons   = 1

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4

set runtimepath^=~/.vim/bundle/ctrlp.vim
