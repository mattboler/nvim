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
local paq = require('paq')
paq({
  ---- Package Manageer
	"savq/paq-nvim"; 

  -- Dependencies
  "nvim-lua/plenary.nvim"; -- Utility functions for fuzzy-finder
  "kyazdani42/nvim-web-devicons"; -- Filetype icons for file explorer and status line

  -- Common
  "RRethy/nvim-base16"; -- Colorscheme
  'nvim-treesitter/nvim-treesitter'; -- Syntax highlighting
  'nvim-lualine/lualine.nvim'; -- Status line
  'lewis6991/gitsigns.nvim'; -- Git status icons
  'kyazdani42/nvim-tree.lua'; -- File explorer
  'nvim-telescope/telescope.nvim'; -- Fuzzy-finder

  -- Language servers

  -- Julia
  'JuliaEditorSupport/julia-vim'; -- Julia utilities
})

----- Plugin configs
require('configure.treesitter')
require('configure.lualine')
require('configure.gitsigns')
require('configure.nvim-tree')
require('configure.telescope')
