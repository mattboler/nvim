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

---- UI Configuration
opt.termguicolors = true                   -- Enable 256-color
cmd 'colorscheme base16-gruvbox-dark-pale' -- Set colorscheme
opt.number = true                          -- Show line numbers
opt.scrolloff = 8                          -- Rows of contet when when scrolling
opt.sidescrolloff = 8                      -- Columns of context when scrolling
opt.splitbelow = true                      -- New hsplits are below current window
opt.splitright = true                      -- New vsplits are to right of current window

local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = 'maintained',
  highlight = {enable = true},
}

g.signify_sign_add='+'
g.signify_sign_delete='-'
g.signify_sign_change='|'

---- Indentation
opt.expandtab = true   -- Use spaces instead of tabs
opt.tabstop = 2        -- A tab is 2 spaces
opt.shiftwidth = 2     -- An indent is 2 spaces
opt.shiftround = true  -- Round indents
opt.smartindent = true -- Automatically indent

---- Searching
opt.hlsearch = true   -- Highlight matches
opt.incsearch = true  -- Match as you type
opt.ignorecase = true -- Case-insensitive matching
opt.smartcase = true  -- ... unless you type in mixed case

---- Keybinds
g.mapleader = ";"
vim.api.nvim_set_keymap('n', '<Leader>ff', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], {noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>fg', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], {noremap = true, silent = true })
