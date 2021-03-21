filetype on

syntax on
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set t_Co=256
colorscheme onehalfdark
let g:airline_theme='onehalfdark'

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set clipboard=unnamed

autocmd InsertEnter * set cul 
autocmd InsertLeave * set nocul 

" imap ii <Esc>

" reemove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
" iinoremap <Down> <Nop>
" iinoremap <Left> <Nop>
" iinoremap <Right> <Nop>
" iinoremap <Up> <Nop>
" iinoremap <C-h> <Left>
" iinoremap <C-j> <Down>
" iinoremap <C-k> <Up>
" iinoremap <C-l> <Right>


" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Initialize plugin system
call plug#end()
