colorscheme railscasts
" colorscheme twilight
syntax enable           " enable syntax processing
filetype indent on      " load filetype-specific indent files

set nowrap
set background=dark
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set expandtab       " tabs are spaces
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set showcmd         " show command in bottom bar
set showmatch       " highlight matching [{()}]
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters.
set ruler           " show column count in status bar
set autoindent	    " automatically indent code
set colorcolumn=125 " change the color of column 125 to show long lines of code

set guifont=Consolas:h16

set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l

autocmd BufWritePre *.rb :%s/\s\+$//e   " remove trailing whitespace from .rb files on save

execute pathogen#infect() 
autocmd vimenter * NERDTree

:map <f7> :tabp<cr>
:map <f8> :tabn<cr>
