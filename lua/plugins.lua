local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt
local g = vim.g

---- Bootstrap plugin manager
local install_path = fn.stdpath('data') .. '/site/pack/paqs/start/paq-nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 
        'clone', 
        '--depth=1', 
        'https://github.com/savq/paq-nvim.git', 
        install_path
    })
end

---- Install plugins
local paq = require('paq')
paq({
    -- Package Manageer
    'savq/paq-nvim'; 

    -- Dependencies
    "nvim-lua/plenary.nvim";               -- Utility functions
    "kyazdani42/nvim-web-devicons";        -- Filetype icons

    -- Common
    'RRethy/nvim-base16';                  -- Colorscheme
    {
        'nvim-treesitter/nvim-treesitter', -- Syntax highlighting
        run=TSUpdate
    }; 
    'nvim-lualine/lualine.nvim';           -- Status line
    'lewis6991/gitsigns.nvim';             -- Git status icons
    'kyazdani42/nvim-tree.lua';            -- File explorer
    'nvim-telescope/telescope.nvim';       -- Fuzzy-finder
    'folke/todo-comments.nvim';            -- Highlight special comments
    'sunjon/Shade.nvim';                   -- Dim inactive windows

    -- Language servers
    'neovim/nvim-lspconfig';               -- Configure LSPs
    'williamboman/nvim-lsp-installer';     -- Easy LSP install

    -- Language-specific
    'JuliaEditorSupport/julia-vim';        -- Julia unicode completion
})

---- Plugin configs
require('configure.treesitter')
require('configure.lualine')
require('configure.gitsigns')
require('configure.nvim-tree')
require('configure.telescope')
require('configure.todo-comments')
require('configure.shade')
require('configure.lsp-config')
