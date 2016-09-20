set nocompatible              " be iMproved, required
filetype off                  " required

" --------------------------- VUNDLE CONFIG ------------------------------{{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ------------------------------------------------------------------------}}}


" --------------------------- COMMON SETTINS -----------------------------{{{
set t_Co=256
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set encoding=utf-8
set fileencoding=utf-8
"set foldmethod=indent
"set foldlevel=20
"set foldlevelstart=20
"set nofoldenable
set nowrap
set gdefault
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set number
set showmatch
set smartcase
set smartindent
"set term=screen-256color
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set novisualbell
set winwidth=85
set winheight=10
"set winminwidth=0
"set winminheight=0
"filetype on
filetype plugin indent on
set mouse=
syntax enable
set background=dark
colorscheme solarized
" ------------------------------------------------------------------------}}}


" ---------------------------- PLUGIN LISTS ------------------------------{{{
Plugin 'leafgarland/typescript-vim'             " Typescript filetype support
Plugin 'scrooloose/nerdtree'                    " Tree file browser
Plugin 'tpope/vim-fugitive'                     " Git integration
Plugin 'scrooloose/syntastic'                   " Syntax checking
Plugin 'tpope/vim-surround'                     " Surrounding thing
Plugin 'kien/ctrlp.vim'                         " File finder
Plugin 'airblade/vim-gitgutter'                 " Show a sign for changed line
Plugin 'valloric/youcompleteme'                 " Autocomplete
Plugin 'mattn/emmet-vim'                        " Works with HTML
Plugin 'jiangmiao/auto-pairs'                   " Autoclose bracket, etc.
Plugin 'bling/vim-airline'                      " Beautiful vim status-line
Plugin 'vim-airline/vim-airline-themes'         " Additional themes for airline
Plugin 'fatih/vim-go'                           " Golang language support
Plugin 'joonty/vdebug'                          " XDebug support
Plugin 'xolox/vim-misc'                         " Dependency for Notes plugin
Plugin 'xolox/vim-notes'                        " Notes
" ------------------------------------------------------------------------}}}


" --------------------------- VUNDLE CONFIG ------------------------------{{{
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ------------------------------------------------------------------------}}}


" -------------------------- PLUGIN'S CONFIG -----------------------------{{{
" syntastic
let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_checkers = ['pep8']
let g:syntastic_python_pep8_args = '--max-line-length=100' " Sometimes 79 is too short :)
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" youcompleteme
let g:ycm_python_binary_path = '/usr/bin/python3'
" CtrlP
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|vendor|nbproject|node_modules|typings)$'
" airline
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1
" notes
let g:notes_directories = ['~/Douments/Notes']
" ------------------------------------------------------------------------}}}


" -------------------------- COMMON KEY MAPPING --------------------------{{{
let mapleader=','                                 " Remap leader to ,
" map window navigation to Alt+hjkl
nnoremap <M-h> <C-W>h
nnoremap <M-j> <C-W>j
nnoremap <M-k> <C-W>k
nnoremap <M-l> <C-W>l
" map window movement to Alt+HJKL
nnoremap <M-H> <C-W>H
nnoremap <M-J> <C-W>J
nnoremap <M-K> <C-W>K
nnoremap <M-L> <C-W>L
" map quit and write
nnoremap <M-q> :q<CR>
nnoremap <M-Q> :q!<CR>
nnoremap <M-w> :w<CR>
" map split window
nnoremap <M-v> <C-W>v
nnoremap <M-s> <C-W>s
" map window resize
nnoremap <M-=> <C-W>=
nnoremap <M-_> <C-W>_
" map :nohighlight command
"nnoremap <M-F1> :nohlsearch<CR>
"inoremap <M-F1> :nohlsearch<CR>
" ------------------------------------------------------------------------}}}


" ------------------------- PLUGIN'S KEY MAPPING -------------------------{{{
nnoremap <F8> :NERDTreeToggle<CR>
" ------------------------------------------------------------------------}}}

" -------------------------- Additional Command --------------------------{{{
" set *.ts buffer as typescript file
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript
" ------------------------------------------------------------------------}}}


" ---------------------------- TODO LISTS --------------------------------{{{
"  Install EasyMotion to move cursor more quickly
"  What the best way to map highlight search toggle
" ------------------------------------------------------------------------}}}
