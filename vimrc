"Pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()

"General
syntax enable
set fileformats=unix,dos
set ruler
set number
set laststatus=2

set nocompatible "Filetype detection doesn't work well in compatible mode

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set nowrap
set showmatch     " set show matching parenthesis

set colorcolumn=80

"Indent
set autoindent
set copyindent

"Detect encoding
set ffs=unix
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"Undo
set undodir=~/.vim/undo
set undofile
set undolevels=1000 " maximum number of changes that can be undone
set undoreload=10000 " maximum number lines to save for undo on a buffer reload

"Backup and *.swp
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

"Highlight EOL whitespace, http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=darkred guibg=#382424
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"The above flashes annoyingly while typing, be calmer in insert mode
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/

"This means that you can have unwritten changes to a file and open a new file
"using :e, without being forced to write or undo your changes first. Also,
"undo buffers and marks are preserved while the buffer is open
set hidden

"Filetype plugins
filetype plugin indent on

"Color
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" Vdebug port change to prevent conflicts with php-fpm. Also disable break on
" open
let g:vdebug_options = {"break_on_open":0,"port":9001}

" vim-session
let g:session_autoload="yes"
let g:session_autosave="yes"
let g:session_default_to_last="yes"
