execute pathogen#infect()

" change the mapleader from \ to ,
let mapleader=','

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
set list listchars=tab:»·,trail:·

"80 char limit
let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn cterm=bold ctermbg=234 guibg=#003333

set laststatus=2
set backspace=2

set background=dark

set noswapfile

map <Leader>n :NERDTreeToggle<CR>
set pastetoggle=<Leader>p

let NERDTreeShowHidden=1
