local function emoji()
  return ''
end

    require'lualine'.setup {
      options = {
        theme = 'onedark',
        component_separators = {'', ''},
        section_separators = {'', ''},
      },
      sections = {
        lualine_a = {{emoji},'mode', 'branch'},
        lualine_b = {'diff'}, 
        lualine_x = {'encoding', 'filetype'},
      }
    }
