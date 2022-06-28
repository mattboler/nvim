require('nvim-tree').setup({
    filters = {
        custom = {
            "^\\.git",
            "__pycache__",
        },
    },
})
