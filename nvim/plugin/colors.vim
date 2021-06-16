" colorscheme
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
endfunction

map <leader>ew :call Transparency()<CR>

function! Beautify()
    let g:sonokai_style = 'atlantis' 
    let g:sonokai_enable_italic = 1
    colorscheme sonokai
    hi LineNR guibg=NONE guifg=#C99266
    hi CursorLineNR guibg=NONE guifg=#FFBA00
    hi CursorLine guibg=#171821 guifg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 

endfunction



let g:onedark_termcolors=256
let g:gruvbox_contrast_dark = 'hard'
let ayucolor="mirage"
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:sonokai_style = 'atlantis' " available andromeda `'atlantis'`,`'shusia'`, `'maia'`, `'espresso'`,default
let g:sonokai_enable_italic = 1
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:gruvbox_material_transparent_background = 0
let g:sonokai_transparent_background = 0
let g:sonokai_menu_selection_background = 'blue'

colorscheme sonokai
"call Transparency()
" call Beautify()
