" --------------- VUNDLE CONFIG STUFF ----------------- 
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" --------------- PLUGIN STUFF -----------------

">CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
"REMOVED temporarily
"noremap <C-o> :CtrlPMRU<CR>

">Vim-airline
set laststatus=2
let g:airline_theme='papercolor'

set t_Co=256   " This is may or may not needed.

set background=dark
colorscheme PaperColor

">NerdCommenter

let g:NERDCompactSexyComs = 1



" --------------- PERSONAL CONFIG STUFF -----------------
syntax on
filetype plugin indent on

"substitute spaces for tabs
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" for better indenting
set autoindent
set smartindent

" creates a menu for tab completion for commands like tabe
set wildmenu
set wildmode=longest:full,full

" moves cursor to matched string
set incsearch

" highlight search results
set hlsearch

" numbering options
set number
set relativenumber

" show c
set showcmd

" remove highlights
noremap ,<space> :noh<CR>

" quicker mode escaping
imap jk <Esc>

" switch tabs
noremap <C-k> gt
noremap <C-j> gT

" highlighting ejs files with html highlighting
au BufNewFile,BufRead *.ejs set filetype=html

" searching is always case insensitive
set ignorecase

" For easier pasting with formatting
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
