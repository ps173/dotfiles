yntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set bg=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey

packloadall
" Max line length that prettier will wrap on: a number or 'auto' (use
" " textwidth).
" " default: 'auto'
" let g:prettier#config#print_width = 'auto'
"
" " number of spaces per indentation level: a number or 'auto' (use
" " softtabstop)
" " default: 'auto'
" let g:prettier#config#tab_width = 'auto'
"
" " use tabs instead of spaces: true, false, or auto (use the expandtab
" setting).
" " default: 'auto'
" let g:prettier#config#use_tabs = 'auto'
"
" " flow|babylon|typescript|css|less|scss|json|graphql|markdown or empty
" string
" " (let prettier choose).
" " default: ''
" let g:prettier#config#parser = ''
"
" " cli-override|file-override|prefer-file
" " default: 'file-override'
" let g:prettier#config#config_precedence = 'file-override'
"
" " always|never|preserve
" " default: 'preserve'
" let g:prettier#config#prose_wrap = 'preserve'
"
" " css|strict|ignore
" " default: 'css'
" let g:prettier#config#html_whitespace_sensitivity = 'css'
"
" " false|true
" " default: 'false'
" let g:prettier#config#require_pragma = 'false'
"
" " Define the flavor of line endings
" " lf|crlf|cr|all
" " defaut: 'lf'
" let g:prettier#config#end_of_line = get(g:, 'prettier#config#end_of_line',
" 'lf')

"Nerd tree key mapping
map <C-t> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>



call plug#begin('~/.vim/plugged')
    Plug 'prettier/vim-prettier', { 'do': 'npm install' }
    Plug 'ervandew/supertab'
    Plug 'mattn/emmet-vim'
    Plug 'scrooloose/nerdtree'
    Plug 'morhetz/gruvbox'
    Plug 'SirVer/ultisnips'
    Plug 'mlaursen/vim-react-snippets'
    Plug 'pangloss/vim-javascript'
    Plug 'ap/vim-css-color'
    Plug 'mxw/vim-jsx'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
    Plug 'vim-scripts/AutoComplPop'
call plug#end()


colorscheme gruvbox
