call plug#begin('~/.vim/plugged')
Plug 'bluz71/vim-moonfly-colors'
Plug 'jaredgorski/SpaceCamp'
Plug 'doums/darcula'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-buftabline'
call plug#end()

filetype plugin indent on
set ruler
set modelines=0
set novisualbell
set hls
set number
set hidden
let mapleader=" "

set nobackup
set nowritebackup
set noswapfile
set nowrap
set textwidth=80
" works when you press Ctrl-G
set shortmess+=c
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set wildmenu

set scrolloff=8
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
set colorcolumn=80


runtime! macros/matchit.vim
nnoremap j gj
nnoremap k gk
set mouse=a
set hidden
set ttyfast
set laststatus=2
set showmode
set showcmd
set incsearch
set ignorecase
set smartcase
set showmatch
set conceallevel=2

" Key Maps that too good

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

vmap < <gv
vmap > >gv

nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
map <Esc><C-c> <CR>

nnoremap <silent> <C-s> :w<CR>
nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>

map <Tab> :bnext <CR>
map <S-Tab> :bprev <CR>
map <leader>q :bdelete <CR>
map <C-n> :Lex! <CR>
map <leader>/ :Commentary <CR>
map <leader><leader> :nohl <CR>

" " NETRW SETTINGS
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_list_hide = &wildignore
let g:netrw_winsize = 25

set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> 

"------NOTE TAKING BINDS------"

" Go To README File
nnoremap <leader>ni :e $NOTE_DIR/README.md<CR>:cd $NOTE_DIR<CR>

" EDITING A MD FILE USING PERSONAL SCRIPT
nnoremap <leader>nn :!~/notes.sh <CR>
nnoremap <leader>nf :!~/bin/notesdirsearch.sh <CR>

let g:vim_markdown_folding_disabled = 1

"-----------------------------"

" real man hacky
set background=dark
set t_Co=256
"" THIS IS A SPECIAL TREATMENT FOR VIM TO MAKE COLORS WORK RIGHT
let &t_ut=''
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable
colorscheme moonfly
" hi Visual ctermfg=NONE guibg=#000000 guifg=NONE
