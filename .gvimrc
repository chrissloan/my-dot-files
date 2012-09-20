call pathogen#runtime_append_all_bundles()
syntax on
set background=dark
colorscheme vividchalk
set guifont=Monaco:h13
set linespace=3
set lines=65
set columns=250
set spell
set number
filetype plugin on


:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=2
set shiftwidth=2

set colorcolumn=80
highlight ColorColumn ctermbg=red guibg=#592929
