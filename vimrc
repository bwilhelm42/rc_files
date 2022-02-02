set rtp+=~/.vim/bundle/Vundle.vim
set nocompatible
filetype off

syntax on
set number
set ruler
set display+=lastline
set scrolloff=2
set noerrorbells
set belloff=all
set mouse=a
set title
set history=1000
set spell
set noexpandtab
set shiftwidth=4
set tabstop=4
set backspace=indent,eol,start

let mapleader = ","
" set cursor to vertical bar in insert mode and block in visual mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

imap jk <Esc>
imap kj <Esc>

nmap <Left> :tabp <cr>
nmap <Right> :tabn <cr>
nmap <Up> :tabr <cr>
nmap <Down> :tabl <cr>
nmap te :tabedit
nmap et :tabedit
nmap tn :tabnew
nmap nt :tabnew

" NERDTree navigation
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Automatically exit nerdtree when it is the last remaining window
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * NERDTree | wincmd p

" Mapping quotation and bracket autocomplete
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
Plugin 'preservim/nerdtree'
Plugin 'morhetz/gruvbox', {'as': 'gruvbox'}
Plugin 'uiiaoo/java-syntax.vim'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on

" for some reason colorscheme has to go after the plugins despite others
" working before it
set background=dark
color gruvbox
