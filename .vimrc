set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

call plug#begin('~/.vim/plugged')
" Colors
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'cormacrelf/vim-colors-github'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

"Rainbow
Plug 'luochen1990/rainbow'

" Comments
Plug 'tpope/vim-commentary'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" I am sorry I need prettier
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }

" Show buffers
Plug 'ap/vim-buftabline'

call plug#end()

syntax on
filetype plugin indent on
let mapleader = " "
set cursorline
set modelines=0
set rnu number
set ruler
set novisualbell
set encoding=utf-8
set hidden

set nobackup
set nowritebackup
set noswapfile
set nowrap
set cmdheight=2
set textwidth=79
set updatetime=300
set formatoptions=tcqrn1
set shortmess+=c
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim
nnoremap j gj
nnoremap k gk
set mouse=a
set hidden
set ttyfast
set laststatus=2
set showmode
set showcmd
nnoremap / /\v
vnoremap / /\v
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

map <leader><space> :let @/=''<cr> " clear search
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>
map <leader>q gqip

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
map <C-b> :Lex <CR>
map <leader>/ :Commentary <CR>

" Fzf 
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
"
" " Empty value to disable preview window altogether
let g:fzf_preview_window = []

map <silent> <C-p> :Files <CR>
map <leader>f :Files <CR>
map <leader>fg :GFiles <CR>
map <leader>fb :Buffers <CR>
map <leader>tt :Colors <CR>

" Something
set listchars=tab:▸\ ,eol:¬
map <leader>l :set list!<CR> 

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" ====================================================================================== "
"                                 Go Stuff                                               "  
" ====================================================================================== "

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

"================================================================================"

" Transparency
function! Transparency()
    hi Normal ctermbg=NONE guibg=NONE
    hi LineNR guibg=NONE ctermbg=NONE
    hi CursorLineNR guibg=NONE ctermbg=NONE
    hi SignColumn ctermbg=NONE guibg=NONE
    hi MsgArea ctermbg=NONE guibg=NONE
" Just for zenburn 
    if g:colors_name=="zenburn"
        hi Visual guibg=#5E5E59 ctermbg=241
    endif
    hi NonText guibg=NONE ctermbg=NONE
endfunc 

function! Contrastify()
    hi Normal ctermbg=000 guibg=#000000
    hi LineNR guibg=#000000 ctermbg=000
    hi CursorLineNR guibg=#000000 ctermbg=000
    hi SignColumn ctermbg=000 guibg=#000000
    hi MsgArea ctermbg=000 guibg=NONE
" Just for zenburn 
    if g:colors_name=="zenburn"
        hi Visual guibg=#5E5E59 ctermbg=241
    endif
    hi NonText guibg=#000000 ctermbg=000
endfunc 

" augroup TranparentEverytimejj
"     autocmd!
"     autocmd ColorScheme * call Transparency()
" augroup END

" Colorschemes settings here
set cursorline
set wildmenu
set t_Co=256
let &t_ut=''
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme bubblegum256-dark

" Make Transparent
nnoremap <leader>ew :call Transparency() <CR>
nnoremap <leader>bb :call Contrastify() <CR>
