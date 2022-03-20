require('telescope').setup({
  defaults = {
    prompt_prefix = "  ",
    selection_caret = "  ",
    entry_prefix = "  ",
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
        preview_width = 0.55,
        results_width = 0.8
      },
      width = 0.85,
      height = 0.80,
    },
    path_display = {'truncate'},
    color_devicons = true,
  }
})
