colorscheme railscasts
" colorscheme solarized
" colorscheme twilight
syntax enable           " enable syntax processing
filetype indent on      " load filetype-specific indent files

set autowrite       " automatically :write before running commands
set noswapfile      " don't use a swap file
set nowrap          " don't wrap lines
set background=dark " Use a dark background
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set expandtab       " tabs are spaces
set number          " show line numbers
set numberwidth=5   " set the width of the line number gutter
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
" set colorcolumn=115 " change the color of column to show long lines of code
set ignorecase      " ignore case when searching

set guifont=Consolas:h16

set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0
set formatoptions+=l

autocmd BufWritePre *.rb :%s/\s\+$//e   " remove trailing whitespace from .rb files on save

execute pathogen#infect() 
" autocmd vimenter * NERDTree

:map <f7> :tabp<cr>
:map <f8> :tabn<cr>
:map <space> :

let g:NERDTreeWinSize=54

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - 3
    return line . "···end" . repeat(" ",fillcharcount)
endfunction " }}}

set foldtext=MyFoldText()

highlight Folded ctermbg=NONE
highlight Folded cterm=NONE
highlight Comment ctermfg=grey

" vim-gitgutter
set updatetime=500
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" vim-syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = 'X'
let g:syntastic_warning_symbol = '!'
highlight SyntasticErrorSign ctermfg=Red ctermbg=NONE
highlight SyntasticWarningSign ctermfg=Yellow ctermbg=NONE
