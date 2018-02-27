
set tags=/home/jason/Projects/RIOT/tags

let mapleader=","
let g:go_jump_to_error = 0

"Custom Macros
nmap <leader>v :split $MYVIMRC<CR>
nmap <leader>w :cd %:p:h<CR>


map <leader>ss :setlocal spell!<CR>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
                    

map <C-j> <C-W>j
map <C-h> <C-W>h
map <C-k> <C-W>k
map <C-l> <C-W>l    

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>
                    
                    
"set list
"let g:solarized_termsolors=256
colorscheme solarized
syntax enable
set secure
set clipboard+=unnamedplus
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set hidden
set incsearch
set backspace=2
set autoread
set listchars=tab:▸\ ,eol:⥂,space:·
set background=dark
set number
set cursorline
set title
set hlsearch
set foldcolumn=1
set lazyredraw
set showmatch
set spelllang=en_us
set so=10 "scroll off from bottom
set wildmenu
set wildignore=*.o,*~,*.pyc,*.git
set ruler
set cmdheight=2
set hid
set magic
set showmatch
set noerrorbells
set novisualbell
set nobackup
set nowb
set noswapfile
set laststatus=2
set statusline=%2*[%n%H%M%R%W]%*%<%(cwd:%{getcwd()}%)\ ƒ:%t\ %=≡%l/%L:%c
set iskeyword -=_

"highlight NonText cterm=none ctermfg=19
"highlight SpecialKey cterm=none ctermfg=19

call plug#begin('~/.vim/plugged')
Plug 'rhysd/vim-clang-format'
call plug#end()

if has("autocmd")
    augroup group1
    autocmd!
    autocmd bufwritepost .vimrc source $MYVIMRC
    autocmd VimLeave * call system('echo ' . shellescape(getreg('+')) . ' | xclip -selection clipboard')
    autocmd FileType c,cpp,objc nnoremap <buffer><Leader>f :<C-u>ClangFormat<CR>
    autocmd FileType c,cpp,objc vnoremap <buffer><Leader>f :ClangFormat<CR>
    autocmd BufwritePre *.c,*.h,*.txt :call CleanExtraSpaces()
    autocmd VimEnter  * vs
    augroup END
endif

fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

command! W w !sudo tee % > /dev/null

