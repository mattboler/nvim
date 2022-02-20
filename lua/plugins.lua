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

  -- Add fuzzy-finding in popup window
  "nvim-telescope/telescope.nvim";
  "nvim-lua/plenary.nvim"; -- Utility functions used by Telescope

  -- Add latex->unicode support in Julia
  'JuliaEditorSupport/julia-vim';

  -- Add wakatime analytics
  'wakatime/vim-wakatime'

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
  options = { theme = 'gruvbox' }
}
