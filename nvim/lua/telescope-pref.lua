require('telescope').setup{
  defaults = {
    prompt_prefix = "$ ",
    selection_caret = "> ",
    initial_mode = "insert",
    file_ignore_patterns = {},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    shorten_path = true,
    winblend = 0,
    width = 0.55,
    preview_cutoff = 1,
    results_height = 1,
    results_width = 2,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },

  }
}
