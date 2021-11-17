require('telescope').setup{
  defaults = {
    prompt_prefix = "$ ",
    selection_caret = "> ",
    initial_mode = "insert",
    file_ignore_patterns = {'node_modules/**', '.git/**'},
    generic_sorter =  require'telescope.sorters'.get_generic_fuzzy_sorter,
    path_display = {
        "shorten"
    },
    winblend = 20,
    border = {},
    layout_config = {
        preview_width = 0.6,
        width =0.9 ,
        preview_cutoff = 0.4,
    }
  }
}
