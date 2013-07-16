set nocompatible                            " for vundle
filetype off                                " for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'joonty/vim-phpqa.git'

filetype plugin indent on                   " for vundle

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

let g:phpqa_codesniffer_args = "--standard=PSR2"

syntax on
set t_Co=256
set background=light
"set background=light
colorscheme solarized

set shortmess +=I

let mapleader=","

set highlight=lub
map <Leader>s :set hlsearch<CR>
map <Leader>S :set nohlsearch<CR>
set incsearch
set wrapscan

set mouse=a
set mousemodel=popup

set nobackup nowb noswapfile

set laststatus=2
set ruler
set number

set showcmd
set showmode

set laststatus=2
set scrolloff=1

set wildmenu
set wildmode=longest:full

set cursorline

set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set smartindent
set autoindent

set encoding=utf-8
set listchars=precedes:.,tab:».,eol:¶,trail:-
set list

set wrap
set linebreak
set textwidth=0
set wrapmargin=0

map <C-n> :NERDTreeToggle<CR>

au BufRead,BufNewFile *.twig set filetype=xhtml
