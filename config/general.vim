" ---------------------------
" --- General nvim config ---
" ---------------------------

" Filetype-aware plugins and indenting
filetype plugin on
filetype indent on

" --- Tabs and Indents ---

" Use spaces instead of tabs
set expandtab

" Set 1 tab = 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Backspace in multples of shiftwidth
set shiftround

" Switch between shiftwidth and tabstops if needed
set smarttab

" Smart indenting
set autoindent
set smartindent

" Copy indentation rules found in current file
set copyindent

" --- Searching ---

" Show matches while typing
set hlsearch
set incsearch

" Ignore case unless typing in mixed-case
set ignorecase
set smartcase

" Command line completion
set wildmenu 
set wildmode=list:longest,full

" General UI improvements
set number
set title


" Allow backspacing over everything
set backspace=indent,eol,start  " Allow backspacing over everything

" Remember more commands and searches
set history=1000
" Undo more
set undolevels=1000
" STOP BEEPING AT ME 
set noerrorbells

" Don't redraw unless needed
set lazyredraw
set hidden
" Give messages more room
set cmdheight=2
" Update async stuff more often
set updatetime=300

set showmatch
