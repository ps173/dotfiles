"--BASIC SETTINGS 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set smartindent
set rnu relativenumber
set nowrap
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


if (has("termguicolors"))
 set termguicolors
endif

"Plugins
call plug#begin("~/.vim/plugged")
    "Floaterm
    Plug 'voldikss/vim-floaterm' 
    
    "Miscellaneous
    Plug 'jiangmiao/auto-pairs'
    Plug 'ervandew/supertab'

    "CSS properties and color selector
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'lilydjwg/colorizer'

    " File explorer
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " Intellisense and code completion with syntax highlighting
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdcommenter'
    
call plug#end()

" colorscheme
syntax on
colorscheme dadara
"highlight Normal ctermbg=NONE guibg=NONE
highlight ColorColumn ctermbg=0 guibg=lightgrey

" NERD TREE AND ICONS
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 0
let g:NERDTreeIgnore = ['node_modules']
let NERDTreeStatusline='NERDTree'

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" File explorer plugin
map <C-b> :NERDTreeToggle<CR>

" nerd commenter
noremap <leader>c :NERDCommenterComment<CR>

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
map  <leader>n :bnext<CR>
map  <leader>p :bprevious<CR>

" Disabling arrow key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" mapping escape to ctrl c
map <Esc><C-c> <CR>

inoremap jk <Esc>
inoremap kj <Esc>

" alternater way to save
nnoremap <silent> <C-s> :w<CR>

nnoremap <silent> <C-Down>    :resize -2<CR>
nnoremap <silent> <C-Up>  :resize +2<CR>
nnoremap <silent> <C-Left>  :vertical resize -2<CR>
nnoremap <silent> <C-Right> :vertical resize +2<CR>




" Important for colorschemes
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc



" Status line

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

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
