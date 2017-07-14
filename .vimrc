set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'jdonaldson/vaxe'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'wincent/command-t'
Plugin 'felixhummel/setcolors.vim'
Plugin 'rdnetto/YCM-Generator'
"Plugin 'jeaye/color_coded'
call vundle#end()

syntax enable
set background=dark
colorscheme Tomorrow-Night-Eighties
set guifont=Hack

set history=500

filetype plugin on
filetype indent on

set autoread

" For YCM
set autowrite
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let mapleader=","
let g:mapleader=","
let g:ycm_confirm_extra_conf = 0

set so=2

set ruler
set confirm
set hid
set autoindent
set cindent
set number
set linebreak
set showbreak=+++

set ignorecase
set smartcase
set hlsearch
set incsearch

set showmatch
set mat=1

set vb
set noerrorbells
set visualbell
set t_vb=
set tm=500

set encoding=utf8
set ffs=unix,mac,dos

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

let c_no_curly_error=1
let NERDTreeQuitOnOpen=1

"Remap $ to ´
nmap + $
"Search on Space
nmap <SPACE> /
"List buffers on ,+b
nmap <leader>b :buffers<cr>:buffer
"Clear search results on ,+cr
nmap <leader><cr> :noh<cr>
"Next buffer on TAB
nmap <leader><TAB> :bnext<cr>
"Prev buffer on Shift+TAB
nmap <S-TAB> :bprev<cr>
"Map ,+cd to change CWD to directory of open buffer
nmap <leader>cd :cd %:p:h<cr>:pwd<cr>

"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
"Remember info about open buffers on close
set viminfo^=%

set laststatus=2
" Format the status line
" set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Char:\ %c
set statusline=\ CWD:\ %r%{getcwd()}%h\ \ %F%m%r%h\ %w\ %=(%l,\ %c)\ \

if version >= 700
    au InsertEnter * hi StatusLine term=reverse ctermfg=0  gui=bold
    au InsertLeave * hi StatusLine term=reverse ctermfg=15 gui=reverse
endif

"Disable arrowkeys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Save on s
nmap s :w<cr>
nmap <leader>n :noh<enter>
nmap <leader><space> :CommandT .<enter>
nmap <leader>t :TagbarToggle<enter>

" Reident code
nmap <leader>f gg=Gg;

"Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
        return ''
    endfunction

nmap <S-j> 5j
nmap <S-k> 5k
