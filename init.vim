" ---
" (neo)VIM config file
"
" Matt Boler, 2021
" ---

" ---
" Plugin management
" ---

" Install plugins

call plug#begin('~/.local/share/nvim/plugged')

" Support ALL languages
Plug 'sheerun/vim-polyglot'

" Theme
Plug 'morhetz/gruvbox'

" Statusline
Plug 'itchyny/lightline.vim'

" Startup screen
Plug 'mhinz/vim-startify'

" No distractions mode
Plug 'junegunn/goyo.vim'

" Fuzzy finder
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Show changes in gutter
Plug 'mhinz/vim-signify'

call plug#end()

" ---
" Plugin configuration
" ---
" Vim-polyglot

" Lightline
let g:lightline = {
    \ 'colorscheme': 'gruvbox'
    \}

" Vim-startify

" GOYO

" FZF

" Vim-signify
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_change = '│'

" ---
" Set proper editing defaults
" ---

" Enable filetype-awareness
filetype plugin indent on

" --- Tabs and spaces ---
" Use spaces instead of tabs
set expandtab

" Set 1 tab = 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Backspace in multiples of shiftwidth if in whitespace
set shiftround

" Switch between shiftwidth and tabstops if needed
set smarttab

" Intelligent indenting
set autoindent
set smartindent
set copyindent

" --- Searching ---

" Show matches while typing
set hlsearch
set incsearch

" Ignore case unless typing in mixed-case
set ignorecase
set smartcase

" --- Etc ---

" Command line completion
set wildmenu
set wildmode=list:longest,full

" Show cursor location in status line
set ruler

" Allow backspacing over everything
set backspace=indent,eol,start

" Remember more commands and searches
set history=1000

" Undo more
set undolevels=1000

" STOP BEEPING AT ME 
set noerrorbells

" Don't redraw unless needed
set lazyredraw

" Allow buffers to be abandoned wihtout warnings
set hidden

" Give messages more room
set cmdheight=2

" Update async stuff more often
set updatetime=300

" ---
" UI and Themes
" ---
" Enable 256-color
set termguicolors

" Show line numbers
set number

" Show filename in terminal title
set title

" Highlight matching brack
set showmatch

" Enable syntax highlighting
syntax on

" Colorscheme
colorscheme gruvbox

" ---
" Keymaps
" ---
" Set leaderkey
let mapleader=";"

" Move using screen lines, not file lines
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" Quick terminal
if has("nvim")
    nnoremap <leader>t :terminal<CR>
    tnoremap <Esc> <C-\><C-n>
end

" No distractions mode
nnoremap <leader>g :Goyo<CR>

" Quick file search
nnoremap <leader>ff :Files<CR>

" Quick grep search
nnoremap <leader>fg :Rg<CR>

" Move between buffers
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
