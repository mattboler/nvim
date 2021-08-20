let mapleader=";"

" Move using screen lines, not file lines
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" Quick terminal
nnoremap <leader>t :terminal<CR>
tnoremap <Esc> <C-\><C-n>

" No distractions mode
nnoremap <leader>g :Goyo<CR>
