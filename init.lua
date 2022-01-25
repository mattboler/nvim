local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

-- Load plugins
require("plugins")

-- Load editor config
require("options")

----- Plugin configs

local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = 'maintained',
  highlight = {enable = true},
}

g.signify_sign_add='+'
g.signify_sign_delete='-'
g.signify_sign_change='|'

require("lualine").setup {
  options = { theme = 'gruvbox' }
}

---- Keybinds
g.mapleader = ";"
vim.api.nvim_set_keymap('n', '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], {noremap = true, silent = true })
