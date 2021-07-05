hi clear
syntax reset
let g:colors_name = "colacode"
set background=dark
set t_Co=256

hi Normal guifg=#C2C2DA ctermbg=NONE guibg=#27282d gui=NONE
hi LineNr guifg=#747474 guibg=#27282d
hi! link SignColumn Normal
hi! link StatusLineNC Normal
hi! link NonText Normal
hi! link Pmenu Normal

hi DiffText guifg=#e56695 guibg=NONE

hi ErrorMsg guifg=#F15B5B guibg=NONE
hi Error guifg=#F15B5B guibg=NONE
hi WarningMsg guifg=#F1EB5B guibg=NONE

hi PreProc guifg=#e56695 guibg=NONE
hi Exception guifg=#e56695 guibg=NONE
hi DiffDelete guifg=#e56695 guibg=NONE
hi GitGutterDelete guifg=#e56695 guibg=NONE
hi GitGutterChangeDelete guifg=#e56695 guibg=NONE
hi Identifier guifg=#e56695 guibg=NONE

hi Type guifg=#A5E069 guibg=NONE
hi Constant guifg=#A5E069 guibg=NONE
hi Repeat guifg=#A5E069 guibg=NONE
hi DiffAdd guifg=#A5E069 guibg=NONE
hi GitGutterAdd guifg=#A5E069 guibg=NONE
hi Keyword guifg=#A5E069 guibg=NONE
hi Title guifg=#cd8367 guibg=NONE
hi PreCondit guifg=#cd8367 guibg=NONE
hi Debug guifg=#cd8367 guibg=NONE
hi Label guifg=#cd8367 guibg=NONE
hi Delimiter guifg=#cd8367 guibg=NONE
hi GitGutterChange guifg=#cd8367 guibg=NONE
hi MoreMsg guifg=#E0BB69 guibg=NONE
hi Tag guifg=#E0BB69 guibg=NONE

hi Function guifg=#7DBFF8 guibg=NONE
hi String guifg=#7DBFF8 guibg=NONE
hi Conditional guifg=#BF99ED guibg=NONE
hi Define guifg=#Bf99ED guibg=NONE


hi MatchParen guifg=#5fb49a guibg=NONE
hi Number guifg=#C2C2DA guibg=NONE
hi SpecialChar guifg=#C2C2DA guibg=NONE
hi Special guifg=#C2C2DA guibg=NONE
hi IncSearch guifg=#cb79d8 guibg=#454545
hi jsGlobalObjects guifg=#c481ff guibg=NONE 
hi jsFrom guifg=#c481ff guibg=NONE
hi Directory guifg=#7040BF guibg=NONE
hi markdownLinkText guifg=#7040BF guibg=NONE
hi Include guifg=#7040BF guibg=NONE
hi Storage guifg=#7040bf guibg=NONE
hi Statement guifg=#cb79d8 guibg=NONE
hi Operator guifg=#cb79d8 guibg=NONE
hi Method guifg=#e56695 guibg=NONE
hi Todo guifg=#e56695 guibg=NONE

" CSS support ( A bit yellow and bluish )
hi! link cssBraces Delimiter
hi! link cssClassName Delimiter
hi! link cssClassNameDot Delimiter
hi! link cssPseudoClassId Delimiter
hi! link cssAtRule Delimiter
hi! link cssBoxProp Tag
hi! link cssFontProp Tag
hi! link cssTextProp Tag
hi! link cssBackgroundProp Tag
hi! link cssPositioningProp Tag
hi! link cssMediaProp String

" Javascript Support
hi! link javaScriptReserved DiffAdd
hi! link javaScriptFunction Define 
hi! link jsImport Operator
hi! link jsExport Operator
hi! link jsReturn Define
hi! link jsFuncCall Define
" hi jsFuncName guifg=#7DBFF8 guibg=NONE
" hi jsModuleGroup guifg=#7DBFF8 guibg=NONE
" hi jsModuleKeyword guifg=#7DBFF8 guibg=NONE
" hi jsStringS guifg=#B992DA guibg=NONE
" hi jsString guifg=#B992DA guibg=NONE
" hi jsClassKeyword guifg=#7DBFF8 guibg=NONE
" hi jsClassBlock guifg=#7DBFF8 guibg=NONE
" hi jsObject guifg=#7DBFF8 guibg=NONE
" hi jsObjectKey guifg=#cd8367 guibg=NONE
" hi jsThis guifg=#cd8367 guibg=NONE
" hi javaScriptBoolean guifg=#7040BF guibg=NONE

" React Support
hi jsxTagName guifg=#7DBFF8 guibg=NONE
hi jsxComponentName guifg=#cb79d8 guibg=NONE

" HTML And MD support
hi htmlString guifg=#A5E069 guibg=NONE
hi htmlTag guifg=#B992DA guibg=NONE
hi htmlTagName guifg=#B992DA guibg=NONE
hi mkdListItemLine guifg=#B992DA guibg=NONE
hi mkdBold gui=bold guifg=#5fb49a guibg=NONE
hi htmlBold gui=bold guifg=#5fb49a guibg=NONE
hi mkdBoldItalic gui=italic guifg=#E0BB69 guibg=NONE
hi htmlBoldItalic gui=italic guifg=#E0BB69 guibg=NONE
hi htmlH1 guifg=#cb79d8 guibg=NONE
hi htmlH2 guifg=#799CD8 guibg=NONE
hi htmlH3 guifg=#e56695 guibg=NONE
hi htmlH4 guifg=#E56666 guibg=NONE
hi mkdCode guifg=#A5E069 guibg=NONE
hi mkdHeading guifg=#e56695 guibg=NONE

" Python Support 
hi pythonFunction guifg=#e56695 guibg=NONE
hi pythonFunctionCall guifg=#e56695 guibg=NONE
hi pythonBuiltinFunc guifg=#e56695 guibg=NONE
hi pythonString guifg=#A5E069 guibg=NONE
hi pythonNumber guifg=#799CD8 guibg=NONE

" Vim Stuff
hi! link SignColumn Normal
hi Title guifg=#C2C2DA
hi FoldColumn guifg=#c481ff guibg=NONE
hi Folded guifg=#8981cb guibg=NONE
hi Comment guifg=#8981CB gui=italic
hi SpecialComment guifg=#c481ff gui=italic guibg=NONE
hi TabLineFill gui=NONE guibg=#454545
hi TabLine guifg=#747474 guibg=#454545 gui=NONE
hi StatusLine gui=bold guibg=#454545 guifg=#C2C2DA
hi Search guibg=#c481ff guifg=#C2C2DA
hi VertSplit gui=NONE guifg=#454545 guibg=NONE
hi Visual guibg=#413D49
hi vimWarn guifg=#F15B5B
hi CursorLine guibg=#2b292f
hi CursorLineNr guifg=#c481ff

" Telescope Stuff
hi TelescopeBorder gui=NONE guifg=#c481ff

" NERDTree Support
hi NERDTreeOpenable guifg=#c481ff
hi NERDTreeUp guifg=#c481ff
hi Directory guifg=#c481ff
hi NERDTreeFileExec guifg=#e56695

" WildMenu and PMenuSel
hi Whitespace guifg=#0D0E17  guibg=#c481ff
hi WildMenu guifg=#e56695 guibg=#413D49
hi PmenuSel guifg=#e56695 guibg=#413D49


" Neovim LSP support BEAUTIFULLL
hi! link LspDiagnosticsDefaultError ErrorMsg
hi! link LspDiagnosticsDefaultHint WarningMsg
hi! link LspDiagnosticsDefaultInformation Error
hi! link LspDiagnosticsDefaultWarning WarningMsg


" Neovim
if has('nvim')
  let g:terminal_color_0 = '#020205'
  let g:terminal_crlor_1 = '#e56695'
  let g:terminal_color_2 = '#A5E069'
  let g:terminal_color_3 = '#E0BB69'
  let g:terminal_color_4 = '#7DBFF8'
  let g:terminal_color_5 = '#c481ff'
  let g:terminal_color_6 = '#66E590'
  let g:terminal_color_7 = '#E7E9F1'
  let g:terminal_color_8 = '#876B89'
  let g:terminal_color_9 = '#E56666'
  let g:terminal_color_10 = '#c0ca8e'
  let g:terminal_color_11 = '#e9b189'
  let g:terminal_color_12 = '#799CD8'
  let g:terminal_color_13 = '#c481ff'
  let g:terminal_color_14 = '#cb79d8'
  let g:terminal_color_15 = '#D9BCE7'
endif

if !has('nvim')
  hi! link SpecialKey Whitespace
endif
