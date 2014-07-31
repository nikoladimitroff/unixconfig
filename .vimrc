runtime! archlinux.vim
" pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

" Reload .vimrc on save
autocmd! bufwritepost .vimrc source %
" remove all trailing whitespace on save
autocmd bufwritepre * :%s/\s\+$//e
" paste from register *
set clipboard=unnamed



" Keybindings
map <c-t> :tabnew<CR>
map <c-e> :tabnext<CR>
map <c-q> :tabprev<CR>

map <c-w> :q<CR>
noremap <silent> <c-s> :update<CR>
vnoremap <silent> <c-s> <c-c>:update<CR>
inoremap <silent> <c-s> <c-o>:update<CR>
map <c-s> :w<CR>

noremap <c-z> u
inoremap <c-z> <c-o>u
noremap <c-y> <c-r>
inoremap <c-y> <c-o><c-r>

map <c-v> ""gP
vnoremap <c-c> ""y
vnoremap <c-x> ""x

" Searching
noremap <c-f> <Esc>/
noremap <f3> n

map <c-a> ggVG
vnoremap <BS> d
nnoremap <BS> d
inoremap <del> <Esc>.<del>i

noremap m h
noremap , j
noremap . l

" Indentation
nmap <tab> >>
nmap <s-tab> <<

" Set variables
set number
set nowrap
set fo-=t
set tabstop=4
set expandtab
set backspace=indent,eol,start whichwrap+=<,>,[,]
set ignorecase
set hlsearch
