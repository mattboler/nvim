local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

---- Package Mangement
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

require "paq" {
  ---- Package Manageer
	"savq/paq-nvim"; 

  ---- UI/Colorscheme
  -- Base16 colorschemes
  "RRethy/nvim-base16";

  -- Add status bar
  "nvim-lualine/lualine.nvim";

  -- Add git status symbols to the gutter
  'mhinz/vim-signify';

  -- Show a recent files screen on startup
  'mhinz/vim-startify';

  -- Activate NeoVIM's improved syntax highlighting
  'nvim-treesitter/nvim-treesitter';

  ---- Functionality
  -- Add fuzzy-finding in popup window
  "nvim-telescope/telescope.nvim";

  ---- Language-specific
  -- Add latex->unicode support in Julia
  'JuliaEditorSupport/julia-vim';

  ---- Etc
  "nvim-lua/plenary.nvim"; -- Utility functions used by Telescope
}

-- Load editor config
require("options")

----- Plugin configs
cmd 'colorscheme base16-gruvbox-dark-pale' -- Set colorscheme

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
