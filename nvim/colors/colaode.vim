if !has('gui_running') && &t_Co < 256
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = "colaode"
set background=dark

hi Normal guifg=#f3f0f0 ctermbg=NONE guibg=#2e3035 gui=NONE

hi DiffText guifg=#76aaf0 guibg=NONE
hi PreProc guifg=#76aaf0 guibg=NONE
hi Exception guifg=#76aaf0 guibg=NONE
hi DiffDelete guifg=#76aaf0 guibg=NONE
hi GitGutterDelete guifg=#76aaf0 guibg=NONE
hi GitGutterChangeDelete guifg=#76aaf0 guibg=NONE
hi cssIdentifier guifg=#76aaf0 guibg=NONE
hi cssImportant guifg=#76aaf0 guibg=NONE
hi Type guifg=#76aaf0 guibg=NONE
hi Identifier guifg=#76aaf0 guibg=NONE
hi htmlBoldItalic gui=italic guifg=#76aaf0 guibg=NONE
hi String guifg=#76aaf0 guibg=NONE
hi PMenuSel guifg=#a76ef8 guibg=NONE
hi Constant guifg=#a76ef8 guibg=NONE
hi Repeat guifg=#a76ef8 guibg=NONE
hi DiffAdd guifg=#a76ef8 guibg=NONE
hi htmlBold gui=bold guifg=#a76ef8 guibg=NONE
hi GitGutterAdd guifg=#a76ef8 guibg=NONE
hi cssIncludeKeyword guifg=#a76ef8 guibg=NONE
hi Keyword guifg=#a76ef8 guibg=NONE
hi IncSearch guifg=#f6b326 guibg=NONE
hi Title guifg=#f6b326 guibg=NONE
hi PreCondit guifg=#f6b326 guibg=NONE
hi Debug guifg=#f6b326 guibg=NONE
hi SpecialChar guifg=#f6b326 guibg=NONE
hi Conditional guifg=#f6b326 guibg=NONE
hi Todo guifg=#f6b326 guibg=NONE
hi Special guifg=#f6b326 guibg=NONE
hi Label guifg=#f6b326 guibg=NONE
hi Delimiter guifg=#f6b326 guibg=NONE
hi CursorLineNR guifg=#f6b326 guibg=NONE
hi Define guifg=#f6b326 guibg=NONE
hi MoreMsg guifg=#f6b326 guibg=NONE
hi Tag guifg=#f6b326 guibg=NONE
hi MatchParen guifg=#f6b326 guibg=NONE
hi Macro guifg=#f6b326 guibg=NONE
hi DiffChange guifg=#f6b326 guibg=NONE
hi GitGutterChange guifg=#f6b326 guibg=NONE
hi pythonString guifg=#f6b326 guibg=NONE
hi cssColor guifg=#f6b326 guibg=NONE
hi WarningMsg guifg=#f6b326 guibg=NONE
hi ErrorMsg guifg=#dc4747 guibg=NONE
hi Function guifg=#dc4747 guibg=NONE
hi Error guifg=#dc4747 guibg=NONE
hi Directory guifg=#c2ff81 guibg=NONE
hi markdownLinkText guifg=#c2ff81 guibg=NONE
hi javaScriptBoolean guifg=#c2ff81 guibg=NONE
hi Number guifg=#c2ff81 guibg=NONE
hi Include guifg=#c2ff81 guibg=NONE
hi Storage guifg=#c2ff81 guibg=NONE
hi cssClassName guifg=#c2ff81 guibg=NONE
hi cssClassNameDot guifg=#c2ff81 guibg=NONE
hi Statement guifg=#ff6dbc guibg=NONE
hi Operator guifg=#ff6dbc guibg=NONE
hi cssAttr guifg=#ff6dbc guibg=NONE
hi Title guifg=#f3f0f0
hi LineNr guifg=#987f7f guibg=#2e3035
hi Comment guifg=#6c6473 gui=italic
hi SpecialComment guifg=#6c6473 gui=italic guibg=NONE
hi TabLineFill gui=NONE guibg=#454545
hi TabLine guifg=#987f7f guibg=#454545 gui=NONE
hi StatusLine gui=bold guibg=#454545 guifg=#f3f0f0
hi Search guibg=#6c6473 guifg=#f3f0f0
hi VertSplit gui=NONE guifg=#454545 guibg=NONE
hi Visual gui=NONE guibg=#454545
hi CursorLine guibg=#454545
hi! link SignColumn Normal
hi! link StatusLineNC Normal
hi! link NonText Normal
hi! link Pmenu Normal


hi! link TermCursor Cursor
hi! link ToolbarButton TabLineSel
hi! link ToolbarLine TabLineFill
hi! link cssBraces Delimiter
hi! link cssClassName Include
hi! link cssIdentifier Operator
hi! link cssClassNameDot DiffText
hi! link cssDefinition DiffText
hi! link cssAtRule Statement
hi! link cssPseudoClassId Special
hi! link cssTagName Statement
hi! link helpHyperTextJump Constant
hi! link htmlArg Constant
hi! link htmlEndTag DiffText
hi! link htmlTag DiffText
hi! link htmlTagName Include
hi! link jsonQuote Normal
hi! link phpVarSelector Identifier
hi! link rubyDefine Statement
hi! link rubyFunction Title
hi! link rubyInterpolationDelimiter String
hi! link rubySharpBang Comment
hi! link rubyStringDelimiter String
hi! link rustFuncCall Normal
hi! link rustFuncName Title
hi! link rustType Constant
hi! link sassClass Special
hi! link shFunction Normal
hi! link vimContinue Comment
hi! link vimFuncSID vimFunction
hi! link vimFuncVar Normal
hi! link vimFunction Title
hi! link vimGroup Statement
hi! link vimHiGroup Statement
hi! link vimHiTerm Identifier
hi! link vimMapModKey Special
hi! link vimOption Identifier
hi! link vimVar Normal
hi! link xmlAttrib Constant
hi! link xmlAttribPunct Statement
hi! link xmlEndTag Statement
hi! link xmlNamespace Statement
hi! link xmlTag Statement
hi! link xmlTagName Statement
hi! link yamlKeyValueDelimiter Delimiter
hi! link CtrlPPrtCursor Cursor
hi! link CtrlPMatch Title
hi! link CtrlPMode2 StatusLine
hi! link deniteMatched Normal
hi! link deniteMatchedChar Title
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirDocSigilDelimiter String
hi! link elixirDocTest String
hi! link elixirExUnitMacro Statement
hi! link elixirExceptionDefine Statement
hi! link elixirFunctionDeclaration Title
hi! link elixirKeyword Statement
hi! link elixirModuleDeclaration Normal
hi! link elixirModuleDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirStringDelimiter String
hi! link jsFlowMaybe Normal
hi! link jsFlowObject Normal
hi! link jsFlowType PreProc
hi! link graphqlName Normal
hi! link graphqlOperator Normal
hi! link gitmessengerHash Comment
hi! link gitmessengerHeader Statement
hi! link gitmessengerHistory Constant

" Javascript
hi! link jsArrowFunction Operator
hi! link jsClassDefinition Normal
hi! link jsClassFuncName Include
hi! link jsExport Statement
hi! link jsFuncName Keyword
hi! link jsFuncCall Operator
hi! link jsFutureKeys Statement
hi! link jsGlobalObjects Include
hi! link jsModuleKeyword Constant
hi! link jsModuleGroup Constant
hi! link jsModuleOperators Statement
hi! link jsNull Constant
hi! link jsObjectFuncName Title
hi! link jsObjectKey Identifier
hi! link jsSuper Statement
hi! link jsTemplateBraces Special
hi! link jsUndefined Constant
hi! link jsxComponentName DiffText

" TODO: Fix Html
" Markdown and HTML
hi! link markdownBold Special
hi! link markdownCode String
hi! link markdownCodeDelimiter String
hi! link markdownHeadingDelimiter Comment
hi! link markdownRule Comment
hi! link htmlH1 Include
hi! link htmlH2 Statement
hi! link htmlH3 Tag
hi! link htmlH4 DiffText
hi! link mkdHeading DiffText
hi! link mkdListItemLine Include


" Python Support
hi! link pythonFunction Include
hi! link pythonFunctionCall DiffText
hi! link pythonBuiltinFunc Constant
hi! link pythonConditional Statement

hi! link ngxDirective Statement
hi! link plug1 Normal
hi! link plug2 Identifier
hi! link plugDash Comment
hi! link plugMessage Special
hi! link SignifySignAdd GitGutterAdd
hi! link SignifySignChange GitGutterChange
hi! link SignifySignChangeDelete GitGutterChangeDelete
hi! link SignifySignDelete GitGutterDelete
hi! link SignifySignDeleteFirstLine SignifySignDelete
hi! link StartifyBracket Comment
hi! link StartifyFile Identifier
hi! link StartifyFooter Constant
hi! link StartifyHeader Constant
hi! link StartifyNumber Special
hi! link StartifyPath Comment
hi! link StartifySection Statement
hi! link StartifySlash Comment
hi! link StartifySpecial Normal
hi! link svssBraces Delimiter
hi! link swiftIdentifier Normal
hi! link typescriptAjaxMethods Normal
hi! link typescriptBraces Normal
hi! link typescriptEndColons Normal
hi! link typescriptFuncKeyword Statement
hi! link typescriptGlobalObjects Statement
hi! link typescriptHtmlElemProperties Normal
hi! link typescriptIdentifier Statement
hi! link typescriptMessage Normal
hi! link typescriptNull Constant
hi! link typescriptParens Normal

" Lsp neovim
hi! link LspDiagnosticsDefaultError ErrorMsg
hi! link LspDiagnosticsDefaultHint WarningMsg
hi! link LspDiagnosticsDefaultInformation Error
hi! link LspDiagnosticsDefaultWarning WarningMsg

