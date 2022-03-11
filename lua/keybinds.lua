local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

local expr_opts = { noremap = true, expr = true, silent = true }

-- Set leader key
g.mapleader = ";"

-- Fix motion between lines
vim.api.nvim_set_keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", expr_opts)
vim.api.nvim_set_keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", expr_opts)

-- <leader>ff searches file names
vim.api.nvim_set_keymap(
  "n", 
  "<Leader>ff", 
  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], 
  {
    noremap = true, silent = true 
  }
)
-- <leader>fg searches within files
vim.api.nvim_set_keymap(
  "n", 
  "<Leader>fg", 
  [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], 
  {
    noremap = true, 
    silent = true 
  }
)
-- <leader>e opens file explorer
vim.api.nvim_set_keymap(
  "n",
  "<Leader>e",
  ":NvimTreeToggle<CR>",
  {
    noremap = true,
    silent = true
  }
)
