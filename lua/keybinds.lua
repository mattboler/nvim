local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

-- Set leader key
g.mapleader = ";"

-- <leader>ff searches file names
vim.api.nvim_set_keymap('n', '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], {noremap = true, silent = true })
-- <leader>fg searches within files
vim.api.nvim_set_keymap('n', '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], {noremap = true, silent = true })
