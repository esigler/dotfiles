set nocompatible
set hidden
set nowrap
set backspace=indent,eol,start
set number
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set visualbell
set noerrorbells
set nobackup
set noswapfile
set ruler
set tabstop=2
set shiftwidth=2
set expandtab

filetype plugin indent on
syntax on

autocmd BufWritePre * :%s/\s\+$//e
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

autocmd Filetype gitcommit setlocal spell textwidth=72
