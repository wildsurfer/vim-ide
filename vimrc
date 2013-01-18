"Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim


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

"Indent
set autoindent
set copyindent

"Detect encoding
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866

"Undo
set undodir=~/.vim_undo
set undofile
set undolevels=1000 " maximum number of changes that can be undone
set undoreload=10000 " maximum number lines to save for undo on a buffer reload

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


