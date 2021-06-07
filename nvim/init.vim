"--BASIC SETTINGS 
syntax on
set noerrorbells
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
" set encoding=utf8
set wildmenu
set mouse=a
set smartindent
set nu relativenumber
set nowrap
set nohlsearch
set smartcase 
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set cursorline
set incsearch
set formatoptions-=cro
set background=dark
let g:mapleader=' '
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*node_modules/     " MacOSX/Linux
" set t_Co=256
set hidden

if (has("termguicolors"))
 set termguicolors
endif

"Plugins
call plug#begin("~/.nvim/plugged")

    "Themes
    Plug 'morhetz/gruvbox'
    Plug 'ayu-theme/ayu-vim' 
    Plug 'tomasiser/vim-code-dark'
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'bluz71/vim-moonfly-colors'
    Plug 'arcticicestudio/nord-vim'
    Plug 'joshdick/onedark.vim'
    Plug 'wojciechkepka/vim-github-dark'
    Plug 'sainnhe/sonokai'
    Plug 'sainnhe/gruvbox-material'
    Plug 'cocopon/iceberg.vim'

    "Miscellaneous
    Plug 'jiangmiao/auto-pairs'
    Plug 'Yggdroot/indentLine'
    Plug 'mhinz/vim-startify'
    Plug 'akinsho/nvim-toggleterm.lua'
    Plug 'junegunn/goyo.vim'
    
    "CSS properties and color selector
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'cocopon/colorswatch.vim'

    " File explorer
    Plug 'scrooloose/nerdtree'

    " Fuzzy Finding
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Intellisense and code completion with syntax highlighting
    Plug 'sheerun/vim-polyglot'
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
    Plug 'mlaursen/vim-react-snippets'
    "Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' } 
    Plug 'RRethy/vim-illuminate'
    Plug 'tpope/vim-commentary'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'sbdchd/neoformat'
    Plug 'mattn/emmet-vim'
    Plug 'numToStr/Navigator.nvim'

    " Statusline at bottom
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'ryanoasis/vim-devicons' 
    " Plug 'kyazdani42/nvim-web-devicons'
    " Plug 'adelarsq/neoline.vim'
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    

call plug#end()


" NERD TREE AND ICONS
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusline='NERDTree'

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" File explorer plugin
map <C-b> :NERDTreeToggle<CR>

" Startify
let g:startify_session_dir = '~/.config/nvim/session'

"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"


" Telescope by TEEJ
nnoremap <C-p> <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fw <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

let g:toggleterm_terminal_mapping = '<C-t>'
" or manually...
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <C-\><C-n>:exe v:count1 . "ToggleTerm"<CR>

" By applying the mappings this way you can pass a count to your
" mapping to open a specific window.
" For example: 2<C-t> will open terminal 2
nnoremap <silent><c-t> :<c-u>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc>:<c-u>exe v:count1 . "ToggleTerm"<CR>

"supertab
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:user_emmet_leader_key='<Tab>'

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })


" Goyo 
nnoremap <leader>kz :Goyo <CR>

" INTEGRATED TERMINAL
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://zsh
  resize 9
endfunction
nnoremap <leader>t :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" Compiling with F9 

map <F9> : make %:r <CR>

" Buffer binds
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
nnoremap <silent>    <A->> :BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Magic buffer-picking mode
nnoremap <silent> <C-f>    :BufferPick<CR>
" Sort automatically by...
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>


" Disabling arrow key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disabling hjkl

"goyo
let g:goyo_linenr=1

" Auto formatting use neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

" mapping escape to ctrl c
map <Esc><C-c> <CR>

" alternater way to save
nnoremap <silent> <C-s> :w<CR>

nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>


" Important for colorschemes
" nmap <C-P> :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc

" Status line
" require('lualine').setup()

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

function! MyStline()
    let g:currentmode={
           \ 'n'  : 'NORMAL ',
           \ 'v'  : 'VISUAL ',
           \ 'V'  : 'V·Line ',
           \ '' : 'V·Block ',
           \ 'i'  : 'INSERT ',
           \ 'R'  : 'R ',
           \ 'Rv' : 'V·Replace ',
           \ 'c'  : 'Command ',
           \}
    
    set statusline=
    set statusline+=%#Visual#
    set statusline+=\<<\ %{toupper(g:currentmode[mode()])} 
    set statusline+=\>>
    set statusline+=%#DiffChange#
    set statusline+=%{StatuslineGit()}
    set statusline+=\ %f
    set statusline+=%m
    set statusline+=%=
    set statusline+=\ %y
    set statusline+=\ %p%%  
    set statusline+=\   
    set statusline+=%#Visual#
    set statusline+=\ %c
    set statusline+=\ %l/%L
endfunction

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

"call Babablacksheeps()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

" colorscheme

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
"let g:sonokai_transparent_background = 1
let g:sonokai_menu_selection_background = 'blue'

colorscheme colorama 
"call Transparency()
"colorscheme gruvbox
" call MyStline()
"

" LUA COMPLETION
set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)


end

-- When U have to many splits : OH MY ZSH
-- Use a loop to conveniently call 'setup' on multiple servers and
-- lua require'nvim_lsp'.tsserver.setup{on_attach=require'completion'.on_attach}
-- map buffer local keybindings when the language server attaches
local servers = { "pyright", "tsserver" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { on_attach = on_attach }
  --nvim_lsp[lsp].setup { on_attach = on_attach }
end

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', "<A-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
map('n', "<A-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
map('n', "<A-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
map('n', "<A-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
map('n', "<A-p>", "<CMD>lua require('Navigator').previous()<CR>", opts)
require('Navigator').setup({
    auto_save = 'current',
    disable_on_zoom = true
})

EOF
