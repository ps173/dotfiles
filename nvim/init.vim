syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set wildmenu
set smartindent
set nu relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set cursorline
set incsearch
set formatoptions-=cro
set bg=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey

if (has("termguicolors"))
 set termguicolors
endif

"Plugins
call plug#begin("~/.vim/plugged")

    "Airline and Airline theme
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "color theme
    Plug 'dracula/vim'
    Plug 'pineapplegiant/spaceduck'
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'

    " File explorer
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " Intellisense and code completion with syntax highlighting
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'sheerun/vim-polyglot'


call plug#end()

" colorscheme
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:gruvbox_contrast_dark="hard"
colorscheme onedark
map <F1> :colorscheme spaceduck<CR>
map <F2> :colorscheme dracula<CR>
map <F3> :colorscheme onedark<CR>
map <F4> :colorscheme gruvbox<CR>

" NERD TREE AND ICONS
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['node_modules']
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" File explorer plugin
map <C-t> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

"Airline Settings
let g:airline#extensions#tabline#enabled = 1


" INTEGRATED TERMINAL
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 9
endfunction
nnoremap <c-N> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l



