local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

-- Set leader key
g.mapleader = ";"

-- Fix motion between lines
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- <leader>t opens a terminal
vim.api.nvim_set_keymap("n", "<Leader>t", ":terminal<CR>", opts)

-- <Esc> moves to normal mode from terminal
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- <leader>e opens file explorer
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", opts)

-- <leader>ff searches file names
vim.api.nvim_set_keymap(
  "n", 
  "<Leader>ff", 
  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], 
  opts
)
-- <leader>fg searches within files
vim.api.nvim_set_keymap(
  "n", 
  "<Leader>fg", 
  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], 
  opts
)

-- :light and :dark switch themes!
cmd [[
  command! Light execute 'colorscheme ' .. g:light_colorscheme
  command! Dark execute 'colorscheme ' .. g:dark_colorscheme
]]
