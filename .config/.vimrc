set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

" Llamado de plug
call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim', { 'branch': 'main'}
Plug 'projekt0n/github-nvim-theme'
Plug 'kvrohit/rasmus.nvim'
Plug 'overcache/NeoSolarized'

"IDE
" - easymotion
Plug 'easymotion/vim-easymotion'
" - nerdtree
Plug 'scrooloose/nerdtree'
" - vim-tmux.navigator
Plug 'christoomey/vim-tmux-navigator'
" Cerramos el llamado de plugins
call plug#end()

" Config del tema
colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let g:github_function_style = "italic"
" config de nerdtree
let NERDTreeQuitOnOpen=1

" tecla lider es el epacio
let mapleader=" "

" comando de ejecucion easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" comando de ejecucion nerdtree
nmap <Leader>nt :NERDTreeFind<CR>
" atajos para instrucciones
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
