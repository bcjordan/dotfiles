" Suggested for pathogen
" execute pathogen#infect()

set nocompatible

" Required Vundle setup
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

" Vundle bundles
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-sensible'
Bundle 'plasticboy/vim-markdown'
Bundle 'tpope/vim-surround'

syntax on
filetype plugin indent on

" Sensible tabs
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Editing visuals
set list listchars=tab:\ \ ,trail:·

" Editing
set number
set history=1000
set showcmd
set showmode

" Swapfiles
set noswapfile
set nobackup
set nowb

" Persistent undo
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" Completion ignoring
set wildmode=list:longest
set wildmenu
set wildignore+=*.o,*.obj,*~
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" Dumping ground of utils

" F5 - Remove trailing whitespace and tabs
nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>:retab<CR>

" Change first word
map <silent> <C-h> ^cw

" Duplicate selection
vmap D y'>p

" Open shell with bashrc sourced
set shell=bash\ --login

" Remember buffer
let g:session_autosave = 'yes'
let g:session_autoload = 'yes'

" Variable replace
" For local replace
nnoremap gr gd[{V%:s/<C-R>///gc<left><left><left>

" For global replace
nnoremap gR gD:%s/<C-R>///gc<left><left><left>

" Recognize .md as markdown
au BufRead,BufNewFile *.md set filetype=markdown
