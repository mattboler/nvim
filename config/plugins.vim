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

" Set plugin settings

" Vim-polyglot

" Lightline

" Vim-startify

" GOYO

" FZF

" Vim-signify
let g:signify_sign_add = '+'
let g:signify_sign_delete = '-'
let g:signify_sign_change = '│'
