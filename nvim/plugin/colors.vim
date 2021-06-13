" colorscheme
function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
endfunction

map <leader>ew :call Transparency()<CR>

function! Babablacksheeps()
    colorscheme dracula 
    "Line Numbers
    hi LineNR guibg=NONE guifg=#C99266
    hi CursorLineNR guibg=NONE guifg=#FFBA00
    hi CursorLine guibg=#171821 guifg=NONE

    "Strings
    hi String guifg=#FFFFD7 guibg=NONE

    "Number
    hi Number guifg=#C3EDFF guibg=NONE
endfunction


let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:onedark_termcolors=256
let g:gruvbox_contrast_dark = 'hard'
let ayucolor="mirage"
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
"let g:sonokai_disable_italic_comment = 1
let g:gruvbox_material_transparent_background = 1
let g:sonokai_transparent_background = 1
let g:sonokai_menu_selection_background = 'blue'

colorscheme gruvbox-material
"call Babablacksheeps()
"call Transparency()
