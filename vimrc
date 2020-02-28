syntax on
set number
set ruler
set display+=lastline
set scrolloff=2
set noerrorbells
set mouse=a
set title
set history=1000
set spell

colorscheme alduin

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

let g:SuperTabMappingForward = '<tab>w'
let g:SuperTabMappingBackward = '<tab>q'
