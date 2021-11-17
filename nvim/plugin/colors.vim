let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" command! Transparency call <SID>Transparency()

function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
    hi NonText ctermbg=NONE guibg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
" Just for zenburn
    if g:colors_name=="zenburn"
        hi Visual guibg=#5E5E59 ctermbg=444 
    endif
endfunction


function Contrastify()
    
    hi Normal guibg=#000000
    hi LineNR guibg=#000000 guifg=#66A1C9
    hi CursorLineNR guibg=NONE guifg=#FFBA00
    hi SignColumn guibg=#000000
    hi CursorLine guibg=#111111 guifg=NONE
    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
    hi NonText guibg=#000000

endfunction

function WarmDark()

    hi LspDiagnosticsDefaultError guifg=#Ec2112
    hi LspDiagnosticsDefaultHint guifg=#ffb112
    hi LspDiagnosticsDefaultInformation guifg=#Ec2112
    hi LspDiagnosticsDefaultWarning guifg=#ffb112 
    hi! link NonText Normal

endfunction

lua << EOF
require('material').setup({
borders = true,
contrast=true,
popup_menu = "colorful",

contrast_windows = { -- Specify which windows get the contrasted (darker) background
		"terminal", -- Darker terminal background
},

})
EOF

set background=dark
set termguicolors
let g:sonokai_better_performance = 1
let g:vscode_style ="dark"
let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:material_style = 'darker'
colorscheme sonokai

" let g:neosolarized_termtrans=1
" let g:github_transparent=v:true
" colorscheme bubblegum
" call Transparency()

" colorscheme gruvbox
nnoremap <leader>mm :lua require('material.functions').toggle_style()<CR>
map <Space>ew :call Transparency()<CR>
map <Space>bb :call Contrastify()<CR>
map <Space>ww :call WarmDark()<CR>
