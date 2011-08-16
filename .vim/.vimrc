" $BCPS: conf/dotfiles/vimrc,v 1.8 2004/11/24 22:50:39 ben Exp $

" general options
set autoindent
autocmd FileType text setlocal textwidth=76
autocmd FileType tex setlocal textwidth=76
set backspace=1
set hlsearch
set smartcase
set shellpipe=2\>\&1\|ccfilter\>
set errorformat=%f:%l:%c:%t:%m
set incsearch
set wildmode=longest,full
set expandtab
set shiftwidth=2
set tabstop=2
set showmode
set showcmd
set ruler
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
" macro for when things get a bit squashed up with 8char tabs

" set syntax highlighting options.
let c_space_errors = 1
let php_sql_query = 1
let php_htmlInStrings = 1
let php_sync_method = 0
filetype plugin indent on

syntax on
color ron
set smarttab

map <F8> :TlistToggle <CR>
map <F7> :NERDTree <CR>

inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 

set shiftwidth=4
set tabstop=4

map <F1> : echo "Youve pressed the wrong fucking key, right?"<CR>  
au BufRead,BufNewFile *.twig set syntax=htmljinja
