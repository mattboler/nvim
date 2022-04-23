require('nvim-treesitter.configs').setup({
    ensure_installed = {
        'c', 'cpp', 'python', 'julia',
        'markdown', 'latex',
        'make', 'cmake', 'bash',
        'yaml', 'json'
    },
    highlight = {
        enable = true
    }
})
