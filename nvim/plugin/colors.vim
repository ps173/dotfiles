let $NVIM_TUI_ENABLE_TRUE_COLOR=1

command! Transparency call <SID>Transparency()

function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
" Just for zenburn
    if g:colors_name=="zenburn"
        hi Visual guibg=#5E5E59 ctermbg=444 
    endif
endfunction


function Beautify()

    colorscheme gruvbox
    hi LineNR guibg=NONE guifg=#C99266
    hi CursorLineNR guibg=NONE guifg=#FFBA00
    hi CursorLine guibg=#171821 guifg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 

endfunction

function WarmDark()

    colorscheme onedark
    hi Normal guibg=#202020 
    hi CursorLine guibg=#202020 
    hi SignColumn guibg=#202020
    hi MsgArea guibg=#202020
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 

endfunction


let g:doom_one_terminal_colors = v:true
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

" colorscheme gruvbox
map <Space>ew :call Transparency()<CR>
map <Space>ww :call WarmDark()<CR>
colorscheme zenburn 
