-- local function emoji()
--   return ''
-- end

-- require'lualine'.setup {
--   options = {
--     theme = '16color',
--     component_separators = {'', ''},
--     section_separators = {'', ''},
--   },
--   sections = {
--     lualine_a = {{emoji},'mode', 'branch'},
--     lualine_b = {'diff'}, 
--     lualine_x = {'encoding', 'filetype'},
--   }
-- }

require'lualine'.setup {
  options = {
    theme = 'gruvbox_material',
    component_separators = {},
    section_separators = {},
  },
  sections = {
    lualine_a = {'mode', 'branch'},
    lualine_b = {'diff'}, 
    lualine_x = {'encoding', 'filetype'},
  }
}
