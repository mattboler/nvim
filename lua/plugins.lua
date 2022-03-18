local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g


---- Bootstrap plugin manager
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth=1', 'https://github.com/savq/paq-nvim.git', install_path})
end

---- Install plugins
require "paq" {
  ---- Package Manageer
	"savq/paq-nvim"; 

  ---- UI Plugins
  "RRethy/nvim-base16"; -- Colorschemes
  'nvim-treesitter/nvim-treesitter'; -- Better syntax highlighting
  "nvim-lualine/lualine.nvim"; -- Status line
  "kyazdani42/nvim-web-devicons"; -- Filetype icons for file explorer and status line
  'mhinz/vim-signify'; -- Git status symbols
  
  ---- General Functionality
  "kyazdani42/nvim-tree.lua"; -- File explorer
  "nvim-telescope/telescope.nvim"; -- Fuzzy-finder
  "nvim-lua/plenary.nvim"; -- Utility functions for fuzzy-finder
  'mhinz/vim-startify'; -- Startup screen
  'wakatime/vim-wakatime'; -- Wakatime logging

  ---- Language-specific
  'JuliaEditorSupport/julia-vim'; -- Julia utilities
}

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
  options = { theme = 'gruvbox' },
  extensions = { 'nvim-tree' },
}

require("nvim-tree").setup{

}
