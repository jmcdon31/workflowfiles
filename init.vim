let mapleader=","

"Custom Macros
nmap <leader>v :split $MYVIMRC<CR>
nmap <leader>w :cd %:p:h<CR>

map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l    
colorscheme solarized
set background=dark
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

syntax enable
set number
set ruler
set spell
set colorcolumn=80
set cursorline
highlight clear LineNr  "makes number colum the same color as background
highlight clear CursorLine
highlight CursorLineNR ctermbg=red
