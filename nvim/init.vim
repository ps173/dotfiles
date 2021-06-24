" Plugins
call plug#begin("~/.nvim/plugged")

    "Themes
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
    Plug 'w0ng/vim-hybrid'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'doums/darcula'

    "Miscellaneous
    Plug 'jiangmiao/auto-pairs'
    Plug 'frazrepo/vim-rainbow'
    Plug 'RRethy/vim-illuminate'
    Plug 'akinsho/nvim-toggleterm.lua'
    Plug 'tpope/vim-fugitive'
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

    " Snippets Support
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'mlaursen/vim-react-snippets'
    
    " Formatting
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
    Plug 'sbdchd/neoformat'

    " Statusline at bottom
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    Plug 'ryanoasis/vim-devicons' 

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

" WOOHHOOOOOOOOOOOO
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vmap < <gv
vmap > >gv

map <F9> : make %:r <CR>

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


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>


" Commentary
nnoremap <silent> <C-/> :Commentary <CR>
nnoremap <silent> <leader>/ :Commentary <CR>

"goyo
let g:goyo_linenr=1

" Auto formatting use neoformat
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
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

" Requiring telescope settings
lua require("telescope-pref")

