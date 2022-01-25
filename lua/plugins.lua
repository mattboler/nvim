local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

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
