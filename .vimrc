"Using Vim Plug
syntax on



set guicursor=
set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
map <Down> <NOP>
map <Up> <NOP>
map <Left> <NOP>
map <Right> <NOP>

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'mbbill/undotree'

" Automatically show Vim's complete menu while typing.
Plug 'vim-scripts/AutoComplPop'


Plug 'scrooloose/nerdtree'
call plug#end()

colorscheme gruvbox
set background=dark

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:ctrlp_use_caching = 0

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" YCM
" The best part.
nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>gd :YcmCompleter FixIt<CR>

" Auto commands
" note that wincmd is CTRL-W

" Execute NERDTree
autocmd VimEnter * NERDTree
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1

" Automatically structure Vim windows
" -----------------------------------
"  Chang cursor to editor console
autocmd VimEnter * wincmd p

"-------------------------------------------------------
"Basic Setting
"-------------------------------------------------------
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c

" Navigate the complete menu like CTRL+n / CTRL+p would
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" :"<Up>"

" Select the complete menu item like CTRL+y would
inoremap <expr> <Right> pumvisible() ? "<C-y>" :"<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would
inoremap <expr> <Left> pumvisible() ? "<C-e>" :"<Left>"
