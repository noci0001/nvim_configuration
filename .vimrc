" vimrc
source ~/.vim_common/common.vim

" Vim-specific settings

set termguicolors

set nocompatible

set cursorline

set cursorcolumn

set number

filetype on

filetype plugin on

filetype indent on

syntax on

set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set scrolloff=10

set nowrap

set incsearch

set ignorecase

set smartcase

set showcmd

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*pyc,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ---------------------------------------------------------------- {{{

" ~/.vimrc
call plug#begin('~/.config/nvim/plugged')  " Use the correct directory for plug.vim

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main'}

call plug#end()


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.

" }}}

inoremap jj <esc>

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" ~/.vimrc
let g:neoformat_rust_cargo = {
    \ 'exe': 'cargo fmt',
    \ 'replace': 1,
    \ 'stdin': 1,
    \ 'args': [],
    \ }
autocmd BufWritePre *.rs Neoformat


" STATUS LINE ------------------------------------------------------------ {{{

set statusline=

set statusline+=\ %F\ %M\ %Y\ %R

set statusline+=%=

set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

set laststatus=2
" }}}
