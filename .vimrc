filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

" Disable the splash screen
:set shortmess +=I

set background=dark
let g:solarized_termtrans=1
let g:solarized_visibility="low"
colorscheme solarized

" mapleader
let mapleader=","

" No Vi Compat
set nocompatible

" Remember 100 cmds
set history=100

" Highlight Searches
set highlight=lub
map <Leader>s :set hlsearch<CR>
map <Leader>S :set nohlsearch<CR>
set incsearch

map! jj <esc>

" Mouse mode ALL
set mousemodel=popup
set mouse=a

" We dont want no stinking swaps or backups
set nobackup nowb noswapfile

" Ruler
set laststatus=2
set ruler

" Line numbers
set number

set textwidth=80

set showcmd
set showmode

" Yeeehawwww
set wildmenu
set wildmode=list:longest

" Show info in ruler
set laststatus=2

" Scrolling options
set scrolloff=2
" Sensible backspace-age
set backspace=eol,start,indent

" Allow <Left>, <Right>, h & l to wrap
set whichwrap+=<,>,h,l

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Highlight current line
set cursorline

set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent

au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile *.tac set filetype=python
au BufRead,BufNewFile Vagrantfile set filetype=ruby

set encoding=utf-8
set listchars=tab:».,eol:¶,trail:-
set list

" "sudo" save:
cmap w!! w !sudo tee % >/dev/null
