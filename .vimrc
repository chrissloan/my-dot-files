call pathogen#runtime_append_all_bundles()
syntax on
set number

filetype plugin on
set guifont=Monaco:h13
set linespace=3
set background=dark
colorscheme vividchalk

set expandtab
set smarttab
set autoindent
set smartindent
set tabstop=2

if has("gui_running")
set guioptions=-t
endif

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%>80v.\+/


" Be angry when trailing whitespace exists
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" used for stripping trailing whitespace
function! <SID>StripTrailingWhitespaces()
   " Preparation: save last search, and cursor position.
   let _s=@/
   let l = line(".")
   let c = col(".")
   " Do the business:
   %s/\s\+$//e
   " Clean up: restore previous search history, and cursor position
   let @/=_s
   call cursor(l, c)
endfunction
" F5 to strip trailing whitespace
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>
" Strip trailing whitespace on save
autocmd BufWritePre *.py,*.js,*.rb,*.rake,*.haml,*.coffee :call <SID>StripTrailingWhitespaces()
