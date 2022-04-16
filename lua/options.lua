local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

---- UI Configuration
g.light_colorscheme = 'base16-grayscale-light'
g.dark_colorscheme = 'base16-nord'

cmd [[execute 'colorscheme ' .. g:dark_colorscheme]]

opt.termguicolors = true   -- Enable 256-color
opt.number = true          -- Show line numbers
opt.scrolloff = 8          -- Rows of context when when scrolling
opt.sidescrolloff = 8      -- Columns of context when scrolling
opt.splitbelow = true      -- New hsplits below current window
opt.splitright = true      -- New vsplits to right of current window
opt.linebreak = true       -- Wrap on word boundary
cmd [[set colorcolumn=80]] -- Highlight max line width

---- Indentation
opt.expandtab = true       -- Use spaces instead of tabs
opt.tabstop = 4            -- A tab is 4 spaces
opt.shiftwidth = 4         -- An indent is 4 spaces
opt.shiftround = true      -- Round indents
opt.smartindent = true     -- Automatically indent

---- Searching
opt.hlsearch = true        -- Highlight matches
opt.incsearch = true       -- Match as you type
opt.ignorecase = true      -- Case-insensitive matching
opt.smartcase = true       -- ... unless you type in mixed case
