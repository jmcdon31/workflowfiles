"let g:loaded_clipboard_provider = 1
let mapleader=","

"set tags=$HOME/Workspace/max_development/MAX/tags
set tags=$HOME/Workspace/cornerstone/tags

nmap <F8> :TagbarToggle<CR>
map <C-e> :NERDTreeToggle<CR>
autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

"CUSTOM MACROS
"open vimrc file
nmap <leader>v :split $MYVIMRC<CR>
"set directory to current file
nmap <leader>w :cd %:p:h<CR>

" let control direction change window pane
map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l

"Other settings
syntax enable
"set clipboard=unnamedplus
set number
"set relativenumber
set ruler
set spell
set smartindent
set showcmd
set undofile
set backup
set backupcopy
set fsync
"Prevent auto indenting when pasting
"reload file when changed outside vim
"set autoread
" update git symbols faster
set updatetime=500
" use spaces for tabs
set tabstop=3
set shiftwidth=3
set expandtab
set list
"show file name
set laststatus=2
"Remove swap files
set cmdheight=2
"Dont pass messages to other menu
set shortmess+=c
"merge sign and number column
"set signcolumn=number
"set autochdir

"Set Colors
let g:solarized_termcolors=256
set background=dark
"set t_Co=256
colorscheme solarized
"set termguicolors
set colorcolumn=100
set cursorline
set hlsearch
set incsearch
set showmatch

" ADDITIONS FOR PROJECTS

"XML Folding"
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax tabstop=2 shiftwidth=2 expandtab

au FileType cfg setlocal foldmethod=syntax tabstop=3 shiftwidth=3 softtabstop=0 noexpandtab list

"swp file management
set backupdir=~/.config/nvim/backup//
set directory=~/.config/nvim/swap//
set undodir=~/.config/nvim/undo//


call plug#begin()
Plug 'junegunn/fzf'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'tpope/vim-vinegar'
call plug#end()

highlight SignColumn      ctermbg=None
"highlight Normal          ctermbg=None
highlight GitGutterAdd    ctermbg=None
highlight GitGutterChange ctermbg=None
highlight GitGutterDelete ctermbg=None

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

map <F5> :%s/\s\+$//<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
set expandtab
