-- ~/.config/nvim/init.lua

-- Set options
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.ignorecase = true
vim.o.mouse = 'v'
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.number = true
vim.o.wildmode = 'longest,list'
vim.o.cc = "80"
vim.o.ttyfast = true
vim.o.cursorline = true
vim.o.clipboard = 'unnamedplus'

-- Enable syntax highlighting and mouse click
vim.cmd 'syntax enable'
vim.cmd 'set mouse=a'

-- Enable line numbers
vim.wo.number = true

-- Plugin manager setup (vim-plug)
vim.cmd [[
  call plug#begin('~/.config/nvim/plugged')
  Plug 'sbdchd/neoformat'
  Plug 'http://github.com/tpope/vim-surround'   " Surrounding ysw)
  Plug 'https://github.com/preservim/nerdtree'  " NerdTree
  Plug 'https://github.com/tpope/vim-commentary'  " For Commenting gcc & gc
  Plug 'https://github.com/vim-airline/vim-airline'  " Status bar
  Plug 'https://github.com/lifepillar/pgsql.vim'  " PSQL Pluging needs :SQLSetType pgsql.vim
  Plug 'https://github.com/ap/vim-css-color'  " CSS Color Preview
  Plug 'https://github.com/rafi/awesome-vim-colorschemes'  " Retro Scheme
  Plug 'https://github.com/neoclide/coc.nvim'   " Auto Completion
  Plug 'https://github.com/ryanoasis/vim-devicons'  " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal'  " Vim Terminal
  Plug 'https://github.com/preservim/tagbar'  " Tagbar for code navigation
  Plug 'https://github.com/terryma/vim-multiple-cursors'  " CTRL + N for multiple cursors
  Plug 'whleucka/reverb.nvim', { 'on': 'BufReadPre', 'config': 'let g:reverb_opts' }
  call plug#end()
]]

-- Neoformat configurations
vim.g.neoformat_enabled_rust = {'rustfmt'}

-- Enable formatting on save
vim.cmd 'autocmd BufWritePre *.rs Neoformat'

-- Key mappings
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFocus<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTree<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-t>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':call CocActionAsync("jumpDefinition")<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true, silent = true })

-- Rainbow parentheses
vim.g.rainbow_active = 1

-- NERDTree symbols
vim.g.NERDTreeDirArrowExpandable = '+'
vim.g.NERDTreeDirArrowCollapsible = '~'

-- Airline settings
vim.g.airline_powerline_fonts = 1
vim.g.airline_left_sep = ''
vim.g.airline_left_alt_sep = ''
vim.g.airline_right_sep = ''
vim.g.airline_right_alt_sep = ''
vim.g.airline_symbols = {
  branch = '',
  readonly = '',
  linenr = '',
}

-- Sound directory
vim.g.sound_dir = '~/sounds/kenney_interface-sounds/Audio/'

-- Reverb.nvim options
vim.g.reverb_opts = {
  sounds = {
    BufRead = { path = vim.g.sound_dir .. 'confirmation_002.ogg', volume = 50 },
    CursorMovedI = { path = vim.g.sound_dir .. 'confirmation_002.ogg', volume = 50 },
    InsertLeave = { path = vim.g.sound_dir .. 'confirmation_002.ogg', volume = 50 },
    ExitPre = { path = vim.g.sound_dir .. 'confirmation_002.ogg', volume = 50 },
    BufWrite = { path = vim.g.sound_dir .. 'confirmation_002.ogg', volume = 50 },
  },
}

-- Coc.nvim key mapping
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? coc#_select_confirm() : "<Tab>"', { expr = true })

