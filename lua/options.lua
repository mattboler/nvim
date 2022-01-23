local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

---- UI Configuration
opt.termguicolors = true                   -- Enable 256-color
opt.number = true                          -- Show line numbers
opt.scrolloff = 8                          -- Rows of contet when when scrolling
opt.sidescrolloff = 8                      -- Columns of context when scrolling
opt.splitbelow = true                      -- New hsplits below current window
opt.splitright = true                      -- New vsplits to right of current window

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
