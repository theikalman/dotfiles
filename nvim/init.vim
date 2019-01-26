set nocompatible              " be iMproved, required
filetype off                  " required

" --------------------------- VUNDLE CONFIG ------------------------------{{{
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" ------------------------------------------------------------------------}}}


" --------------------------- COMMON SETTINS -----------------------------{{{
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set encoding=utf-8
set fileencoding=utf-8
set foldmethod=syntax "vim-go support this by default
set nowrap
set gdefault
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:⇥\ ,eol:¬,nbsp:⋅,trail:•
set noswapfile
set number
set showmatch
set smartcase
set smartindent
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set novisualbell
set winwidth=85
set winheight=30
set winminwidth=0
set winminheight=0
set relativenumber
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized
" ------------------------------------------------------------------------}}}


" ---------------------------- PLUGIN LISTS ------------------------------{{{
Plugin 'tpope/vim-fugitive'              " Git integration
Plugin 'scrooloose/syntastic'            " Syntax checking
Plugin 'kien/ctrlp.vim'                  " File finder
Plugin 'airblade/vim-gitgutter'          " Show a sign for changed line
Plugin 'mattn/emmet-vim'                 " Works with HTML
Plugin 'tpope/vim-surround'              " Surrounding thing
Plugin 'jiangmiao/auto-pairs'            " Autoclose bracket, etc.
Plugin 'fatih/vim-go'                    " Support for Golang
Plugin 'vim-airline/vim-airline'         " Beautiful status bar
Plugin 'vim-airline/vim-airline-themes'  " Theme collection for vim-airline
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
" ctrlp
let g:ctrlp_custom_ignore = '\v[\/](node_modules|vendor)|(\.(swp|ico|git|svn))$'
" vim-go
let g:go_fmt_command = "goimports"
" https://github.com/fatih/vim-go/issues/502
let g:go_fmt_experimental = 1 " workaround for auto-fold when save go file
" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" ------------------------------------------------------------------------}}}


" -------------------------- COMMON KEY MAPPING --------------------------{{{
let mapleader=','                                 " Remap leader to ,
" map window navigation to Alt+hjkl
nnoremap <leader>wh <C-W>h
nnoremap <leader>wj <C-W>j
nnoremap <leader>wk <C-W>k
nnoremap <leader>wl <C-W>l
" map window movement to Alt+HJKL
nnoremap <leader>wH <C-W>H
nnoremap <leader>wJ <C-W>J
nnoremap <leader>wK <C-W>K
nnoremap <leader>wL <C-W>L
" map quit and write
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>fs :w<CR>
" map split window
nnoremap <leader>wv <C-W>v
nnoremap <leader>ws <C-W>s
" map window resize
nnoremap <leader>w= <C-W>=
nnoremap <leader>w_ <C-W>_
" map :nohighlight command
nnoremap <leader>nh :nohlsearch<CR>
" ------------------------------------------------------------------------}}}


" ------------------------- PLUGIN'S KEY MAPPING -------------------------{{{
nnoremap <F8> :NERDTreeToggle<CR>
nnoremap <leader>] :GoDoc<CR>
" ------------------------------------------------------------------------}}}


" ---------------------------- TODO LISTS --------------------------------{{{
"  Install EasyMotion to move cursor more quickly
" ------------------------------------------------------------------------}}}


" ------------------------------------ NOTES -----------------------------{{{
"                      ----------- about Alt key -----------
"  In my terminal, alt key mapping using <A-...> doesn't works.
"  So I have to map alt key by it's signal by going to insert mode and press
"  Ctrl-V then press the combination of alt key and the key who whant to
"  combine to. I use this (alt key) to remap some windows operations.
" ------------------------------------------------------------------------}}}
