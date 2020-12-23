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
set undodir=~/.vim/undodir
set undofile
set incsearch
set formatoptions-=cro
set bg=dark
highlight ColorColumn ctermbg=0 guibg=lightgrey
"Airline
let g:airline_powerline_fonts = 2
" set font terminal font or set gui vim font
set guifont=DroidSansMono\ Nerd\ Font\ 12
"removing startup warning
let g:coc_disable_startup_warning = 1


"Nerd tree key mapping
map <C-t> :NERDTreeToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>
"Nerd Commenter

map  <F1> :colorscheme dracula<CR>
map  <F2> :colorscheme salvation<CR>
map  <F3> :colorscheme gruvbox<CR>
map  <F4> :colorscheme desert<CR>
map  <F5> :colorscheme monokai<CR>

call plug#begin('~/.vim/plugged')
    Plug 'ervandew/supertab'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'scrooloose/nerdtree'
    Plug 'gruvbox-community/gruvbox'
    Plug 'KabbAmine/vCoolor.vim'
    Plug 'sickill/vim-monokai'
    Plug 'dracula/vim' 
    Plug 'SirVer/ultisnips' "Requires Python
    Plug 'mlaursen/vim-react-snippets'
    Plug 'pangloss/vim-javascript'
    Plug 'lilydjwg/colorizer'
    Plug 'mxw/vim-jsx'
    Plug 'branwright1/salvation-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Yggdroot/indentLine' 
call plug#end()

" personal notes
map  <F8> :!notes.sh<CR>

"themes 
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
