"Plugins
call plug#begin("~/.nvim/plugged")

    "Themes that I like 
    Plug 'sainnhe/gruvbox-material'
    Plug 'navarasu/onedark.nvim'

    "Miscellaneous
    Plug 'glepnir/dashboard-nvim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'frazrepo/vim-rainbow'
    Plug 'RRethy/vim-illuminate'
    Plug 'akinsho/nvim-toggleterm.lua'
    Plug 'junegunn/vim-plug'
    Plug 'junegunn/goyo.vim'
    
    "CSS properties and color selector
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'
    Plug 'cocopon/colorswatch.vim'

    " File explorer
    Plug 'scrooloose/nerdtree'

    " Comments
    Plug 'tpope/vim-commentary'
    
    " Fuzzy Finding
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Intellisense and code completion with syntax highlighting
    Plug 'sheerun/vim-polyglot'
    Plug 'neovim/nvim-lspconfig'
    Plug 'kabouzeid/nvim-lspinstall'
    Plug 'hrsh7th/nvim-compe'
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

    " Snippets Support
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'mlaursen/vim-react-snippets'
    
    " Formatting
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'sbdchd/neoformat'

    " Statusline at bottom
    Plug 'romgrk/barbar.nvim'
    Plug 'hoob3rt/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons' " lua

    " Git Stuff
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'

call plug#end()

let g:mapleader=" "

nnoremap <leader>kz :Goyo <CR>

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" WOOHHOOOOOOOOOOO
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vmap < <gv
vmap > >gv

map <F9> : make %:r <CR>

let bufferline = get(g:, 'bufferline', {})

let bufferline.icons = v:false
nnoremap <silent>    <S-Tab> :BufferPrevious<CR>
nnoremap <silent>    <Tab> :BufferNext<CR>
nnoremap <silent>    <A->> :BufferMovePrevious<CR>
nnoremap <silent>    <A-<> :BufferMoveNext<CR>
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
nnoremap <silent>    <C-q> :BufferClose<CR>
nnoremap <silent> <C-f>    :BufferPick<CR>
nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>
nnoremap <silent> <Space>S :SessionSave<CR>
nnoremap <leader><leader>g :GitGutterToggle<CR>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


" Commentary
nnoremap <silent> <C-/> :Commentary <CR>
nnoremap <silent> <leader>/ :Commentary <CR>

"goyo
let g:goyo_linenr=0

" Auto formatting use neoformat
augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END

" mapping escape to ctrl c
map <Esc><C-c> <CR>

" alternater way to save
nnoremap <silent> <C-s> :w<CR>

" resizing
nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>


autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)

" Important for colorschemes
nmap <F5> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

let g:rainbow_active = 1
let g:dashboard_default_executive ='telescope'

" Requiring telescope settings
lua require("telescope-pref")
lua require("airline")
