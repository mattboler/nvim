" Filetype-awareness
filetype plugin on
filetype indent on

" Spacing/indents
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set expandtab
set smarttab

set autoindent
set smartindent
set copyindent

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Command line completion
set wildmenu 
set wildmode=list:longest,full

" General UI improvements
set number
set title

" STOP BEEPING AT ME
set noerrorbells

" Allow backspacing over everything
set backspace=indent,eol,start  " Allow backspacing over everything

" QOL
set history=1000                " Remember more commands and search history
set undolevels=1000             " 1000 levels of undo
set noerrorbells                " Don't beep

set nolazyredraw
set hidden
set cmdheight=2                 " Better display for messages
set updatetime=300
